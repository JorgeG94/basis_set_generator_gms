import basis_set_exchange as bse
import json

def format_fortran_float(value):
    """
    Format a float in GAMESS Fortran style: 0.XXXXXXD±YY
    Example: 13.01 -> 0.1301000D+02
    """
    if value == 0.0:
        return "0.0D+00"
    
    # Get scientific notation
    exp_str = f"{value:.7e}"
    
    # Parse mantissa and exponent
    parts = exp_str.split('e')
    mantissa = float(parts[0])
    exponent = int(parts[1])
    
    # Adjust to GAMESS format (leading zero)
    # Python gives 1.301e+01, GAMESS wants 0.1301D+02
    mantissa = mantissa / 10.0
    exponent = exponent + 1
    
    # Format with proper precision
    if exponent >= 0:
        return f"{mantissa:.7f}D+{exponent:02d}"
    else:
        return f"{mantissa:.7f}D{exponent:03d}"

def zeta_index_to_basis_name(n_zeta_idx):
    """
    Convert zeta index (1-8) to basis type name.
    
    Args:
        n_zeta_idx: Integer from 1 to 8
        
    Returns:
        String with basis name (e.g., 'PVDZ', 'PVTZ', etc.)
    """
    basis_map = {
        1: 'PVDZ',
        2: 'PVTZ',
        3: 'PVQZ',
        4: 'PV5Z',
        5: 'PV6Z',
        6: 'PV7Z',
        7: 'PV8Z',
        8: 'PV9Z'
    }
    
    if n_zeta_idx not in basis_map:
        raise ValueError(f"Invalid zeta index: {n_zeta_idx}. Must be 1-8.")
    
    return basis_map[n_zeta_idx]

def json_to_gamess_fortran(basis_names, elements, subroutine_name="get_ccn_dk_first_period_basis"):
    """
    Generate GAMESS Fortran subroutine with hardcoded basis sets.
    
    Args:
        basis_names: List of basis set names (e.g., ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk'])
        elements: List of element symbols (e.g., ['H', 'He'])
        subroutine_name: Name of the Fortran subroutine
    """
    
    # Download all basis sets
    basis_data = {}
    for basis_name in basis_names:
        basis_result = bse.get_basis(
            basis_name,
            elements=elements,
            fmt='qcschema',
            optimize_general=True 
        )
        if isinstance(basis_result, str):
            basis_data[basis_name] = json.loads(basis_result)
        else:
            basis_data[basis_name] = basis_result
    
    # Start building Fortran code
    fortran_lines = []
    
    # Subroutine header
    fortran_lines.append(f"subroutine {subroutine_name}(e,s,p,d,f,g,h,element_number,n_zeta,ilast)")
    fortran_lines.append("  use periodic_tables, only: H, HE")
    fortran_lines.append("  use basis_types, only: n_zeta_to_basis, PVDZ, PVTZ, PVQZ, PV5Z")
    fortran_lines.append("  use comm_iofile, only: iw")
    fortran_lines.append("  use comm_par, only: maswrk")
    fortran_lines.append("  use prec, only: dp")
    fortran_lines.append("  implicit none")
    fortran_lines.append("  integer, intent(in) :: element_number,n_zeta")
    fortran_lines.append("  integer, intent(inout) :: ilast")
    fortran_lines.append("  real(kind=dp), intent(inout) :: e(310),s(310),p(310),d(310),&")
    fortran_lines.append("                                 f(310),g(310),h(310)")
    fortran_lines.append("  integer :: basis_type")
    fortran_lines.append("  basis_type = n_zeta_to_basis(n_zeta)")
    fortran_lines.append("  select case (element_number)")
    fortran_lines.append("")
    
    # Process each element
    for elem_symbol in elements:
        elem_Z = get_atomic_number(elem_symbol)
        elem_name = elem_symbol.upper()
        
        #fortran_lines.append(f"!     ----- {elem_name} -----")
        #fortran_lines.append("")
        fortran_lines.append(f"    case({elem_name})")
        #fortran_lines.append("")
        fortran_lines.append(f"      select case (basis_type)")
        
        # Process each basis set (n_zeta 1-4 for DZ-5Z)
        for n_zeta_idx, basis_name in enumerate(basis_names, start=1):
            fortran_lines.append(f"         case({zeta_index_to_basis_name(n_zeta_idx)})")
            #if(n_zeta_idx == 1):
            #    fortran_lines.append(f"      if ({zeta_index_to_basis_name(n_zeta_idx)}) then")
            
            # Get basis data for this element
            basis_dict = basis_data[basis_name]
            
            # Find the correct key for this element (case-insensitive search)
            element_key = None
            elem_lower = elem_symbol.lower()
            for key in basis_dict['center_data'].keys():
                if key.lower().startswith(elem_lower + '_'):
                    element_key = key
                    break
            
            if element_key is None:
                fortran_lines.append(f"!        {basis_name} not defined for {elem_name}")
                fortran_lines.append("         if(maswrk) write(iw,9999)")
                fortran_lines.append("         call abrt")
            else:
                element_data = basis_dict['center_data'][element_key]
                
                # Process shells and generate entries
                index = 1
                for shell in element_data['electron_shells']:
                    am = shell['angular_momentum'][0]
                    am_label = ['S', 'P', 'D', 'F', 'G', 'H', 'I'][am]
                    exponents = [float(e) for e in shell['exponents']]
                    coefficients = shell['coefficients']
                    
                    # For each coefficient set
                    for coef_set in coefficients:
                        coefs = [float(c) for c in coef_set]
                        
                        # Find non-zero coefficients
                        non_zero_indices = [i for i, c in enumerate(coefs) if abs(c) > 1e-10]
                        
                        # Write out each non-zero primitive
                        for i in non_zero_indices:
                            exp = exponents[i]
                            coef = coefs[i]
                            
                            exp_str = format_fortran_float(exp)
                            coef_str = format_fortran_float(coef)
                            
                            fortran_lines.append(f"           e({index}) = {exp_str}")
                            fortran_lines.append(f"           {am_label}({index}) = {coef_str}")
                            index += 1

                fortran_lines.append(f"           ilast = {index - 1}")

            # # Handle multiple basis sets
            # if n_zeta_idx < len(basis_names):
            #     fortran_lines.append(f"      case ({zeta_index_to_basis_name(n_zeta_idx+1)})")
        
        # Add final ELSE clause after all basis sets
        fortran_lines.append("      case default")
        fortran_lines.append("         if(maswrk) write(iw,9999)")
        fortran_lines.append("         call abrt")
        fortran_lines.append("      end if")
        fortran_lines.append("      return")
        fortran_lines.append("")

    # Default case and footer
    fortran_lines.append("      case default")
    fortran_lines.append("        if(maswrk) write(iw,9998)")
    fortran_lines.append("        call abrt")
    fortran_lines.append("      end select")
    fortran_lines.append("      return")
    fortran_lines.append(" 9999 format(/1X,'ERROR: DK CORRELATION CONSISTENT BASIS',")
    fortran_lines.append("     *      ' SETS ARE ONLY AVAILABLE FOR DZ-5Z')")
    fortran_lines.append(" 9998 format(/1X,'ERROR: Non first-period element in DK basis subroutine')")
    fortran_lines.append("")
    fortran_lines.append("end subroutine " + subroutine_name)
    
    return '\n'.join(fortran_lines)

def get_atomic_number(symbol):
    """Get atomic number from element symbol."""
    periodic_table = {
        'Hydrogen': 1, 'Helium': 2, 'Li': 3, 'Be': 4, 'B': 5, 'C': 6, 'N': 7, 'O': 8, 
        'F': 9, 'Ne': 10, 'Na': 11, 'Mg': 12, 'Al': 13, 'Si': 14, 'P': 15, 
        'S': 16, 'Cl': 17, 'Ar': 18, 'K': 19, 'Ca': 20, 'Sc': 21, 'Ti': 22,
        'V': 23, 'Cr': 24, 'Mn': 25, 'Fe': 26, 'Co': 27, 'Ni': 28, 'Cu': 29,
        'Zn': 30, 'Ga': 31, 'Ge': 32, 'As': 33, 'Se': 34, 'Br': 35, 'Kr': 36
    }
    return periodic_table.get(symbol, 0)

# Example usage
if __name__ == "__main__":
    basis_sets = ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk']
    elements = ['H', 'He']
    
    fortran_code = json_to_gamess_fortran(basis_sets, elements)
    
    # Save to file
    with open('basis_fortran.f90', 'w') as f:
        f.write(fortran_code)
    
    print("Generated Fortran code:")
    print("=" * 70)
    print(fortran_code[:2000])  # Print first 2000 characters
    print("...")
    print("=" * 70)
    print(f"\nSaved to basis_fortran.f90")
