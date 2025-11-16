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

def json_to_gamess_fortran(basis_names, elements=None, subroutine_name="get_ccn_dk_first_period_basis"):
    """
    Generate GAMESS Fortran subroutine with hardcoded basis sets.
    
    Args:
        basis_names: List of basis set names (e.g., ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk'])
        elements: List of element symbols (e.g., ['H', 'He']) or None to get all available
        subroutine_name: Name of the Fortran subroutine
    """
    
    # Download all basis sets and determine which elements are available
    basis_data = {}
    elements_per_basis = {}
    
    for basis_name in basis_names:
        basis_result = bse.get_basis(
            basis_name,
            elements=elements,  # None gets all available
            fmt='qcschema',
            optimize_general=True 
        )
        if isinstance(basis_result, str):
            basis_data[basis_name] = json.loads(basis_result)
        else:
            basis_data[basis_name] = basis_result
        
        # Extract elements for this basis
        elements_in_basis = set()
        for key in basis_data[basis_name]['center_data'].keys():
            elem_symbol = key.split('_')[0].upper()
            elements_in_basis.add(elem_symbol)
        elements_per_basis[basis_name] = elements_in_basis
    
    # Find union of all elements across ALL basis sets
    if elements is None:
        all_elements = set.union(*elements_per_basis.values())
        # Sort by atomic number to get H, He, Li, Be... order
        elements_to_use = sorted(list(all_elements), key=get_atomic_number)
        print(f"Found {len(elements_to_use)} total elements across all basis sets: {elements_to_use}")
    else:
        # Sort user-provided elements by atomic number too
        elements_to_use = sorted(elements, key=lambda x: get_atomic_number(x.upper()))
    
    # Report which elements are available in which basis sets
    print("\nElement coverage:")
    for elem in elements_to_use:
        available_in = [basis for basis, elems in elements_per_basis.items() if elem in elems]
        missing_in = [basis for basis, elems in elements_per_basis.items() if elem not in elems]
        if missing_in:
            print(f"  {elem}: available in {len(available_in)}/{len(basis_names)} basis sets (missing: {', '.join(missing_in)})")
    
    # Start building Fortran code
    fortran_lines = []
    
    # Determine which elements to import based on what we're using (in order)
    elem_imports = ', '.join([e.upper() for e in elements_to_use])
    
    # Subroutine header
    fortran_lines.append(f"subroutine {subroutine_name}(exponents,s_coef,p_coef,d_coef,f_coef,g_coef,h_coef,element_number,n_zeta,ilast)")
    fortran_lines.append(f"  use periodic_table, only: {elem_imports}")
    fortran_lines.append("  use basis_types, only: n_zeta_to_basis, PVDZ, PVTZ, PVQZ, PV5Z")
    fortran_lines.append("  use iso_fortran_env, only: real64")
    fortran_lines.append("  implicit none")
    fortran_lines.append("  integer, intent(in) :: element_number,n_zeta")
    fortran_lines.append("  integer, intent(inout) :: ilast")
    fortran_lines.append("  real(kind=real64), intent(inout) :: exponents(310),s_coef(310),p_coef(310),d_coef(310),&")
    fortran_lines.append("                                 f_coef(310),g_coef(310),h_coef(310)")
    fortran_lines.append("  integer :: basis_type")
    fortran_lines.append("  integer :: iw")
    fortran_lines.append("  logical :: maswrk")
    fortran_lines.append("  basis_type = n_zeta_to_basis(n_zeta)")
    fortran_lines.append("  maswrk = .true.")
    fortran_lines.append("  iw = 1")
    fortran_lines.append("  select case (element_number)")
    fortran_lines.append("")
    
    # Process each element (now in atomic number order)
    for elem_symbol in elements_to_use:
        elem_Z = get_atomic_number(elem_symbol)
        elem_name = elem_symbol.upper()
        
        fortran_lines.append(f"    case({elem_name})")
        fortran_lines.append(f"      select case (basis_type)")
        
        # Process each basis set
        for n_zeta_idx, basis_name in enumerate(basis_names, start=1):
            basis_const_name = zeta_index_to_basis_name(n_zeta_idx)
            fortran_lines.append(f"         case({basis_const_name})")
            
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
                # Element not available in this basis set - this is OK, just return error
                fortran_lines.append(f"!           {basis_name} not defined for {elem_name}")
                fortran_lines.append(f"           if(maswrk) write(iw,*) 'ERROR: {basis_name} basis not available for element {elem_name}'")
                fortran_lines.append("           ilast = -1  ! Error flag")
                fortran_lines.append("           return")
            else:
                element_data = basis_dict['center_data'][element_key]
                
                # Process shells and generate entries
                index = 1
                for shell in element_data['electron_shells']:
                    am = shell['angular_momentum'][0]
                    am_label = ['s_coef', 'p_coef', 'd_coef', 'f_coef', 'g_coef', 'h_coef', 'i_coef'][am]
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
                            
                            fortran_lines.append(f"           exponents({index}) = {exp_str}")
                            fortran_lines.append(f"           {am_label}({index}) = {coef_str}")
                            index += 1

                fortran_lines.append(f"           ilast = {index - 1}")
        
        # Add default case for unknown basis types
        fortran_lines.append("         case default")
        fortran_lines.append("           if(maswrk) write(iw,9999)")
        fortran_lines.append("           ilast = -1")
        fortran_lines.append("           return")
        fortran_lines.append("      end select")
        fortran_lines.append("      return")
        fortran_lines.append("")

    # Default case and footer
    fortran_lines.append("    case default")
    fortran_lines.append("      if(maswrk) write(iw,9998)")
    fortran_lines.append("      ilast = -1")
    fortran_lines.append("      return")
    fortran_lines.append("  end select")
    fortran_lines.append("")
    fortran_lines.append(" 9999 format(/1X,'ERROR: DK CORRELATION CONSISTENT BASIS',&")
    fortran_lines.append("           ' SETS ARE ONLY AVAILABLE FOR DZ-5Z')")
    fortran_lines.append(" 9998 format(/1X,'ERROR: Element not supported in this basis subroutine')")
    fortran_lines.append("")
    fortran_lines.append("end subroutine " + subroutine_name)
    
    return '\n'.join(fortran_lines)

def get_atomic_number(symbol):
    """Get atomic number from element symbol."""
    periodic_table = {
        'H': 1, 'HE': 2,
        'LI': 3, 'BE': 4, 'B': 5, 'C': 6, 'N': 7, 'O': 8, 'F': 9, 'NE': 10,
        'NA': 11, 'MG': 12, 'AL': 13, 'SI': 14, 'P': 15, 'S': 16, 'CL': 17, 'AR': 18,
        'K': 19, 'CA': 20, 'SC': 21, 'TI': 22, 'V': 23, 'CR': 24, 'MN': 25, 'FE': 26,
        'CO': 27, 'NI': 28, 'CU': 29, 'ZN': 30, 'GA': 31, 'GE': 32, 'AS': 33, 'SE': 34,
        'BR': 35, 'KR': 36,
        'RB': 37, 'SR': 38, 'Y': 39, 'ZR': 40, 'NB': 41, 'MO': 42, 'TC': 43, 'RU': 44,
        'RH': 45, 'PD': 46, 'AG': 47, 'CD': 48, 'IN': 49, 'SN': 50, 'SB': 51, 'TE': 52,
        'I': 53, 'XE': 54,
        'CS': 55, 'BA': 56,
        'LA': 57, 'CE': 58, 'PR': 59, 'ND': 60, 'PM': 61, 'SM': 62, 'EU': 63, 'GD': 64,
        'TB': 65, 'DY': 66, 'HO': 67, 'ER': 68, 'TM': 69, 'YB': 70, 'LU': 71,
        'HF': 72, 'TA': 73, 'W': 74, 'RE': 75, 'OS': 76, 'IR': 77, 'PT': 78, 'AU': 79,
        'HG': 80, 'TL': 81, 'PB': 82, 'BI': 83, 'PO': 84, 'AT': 85, 'RN': 86,
        'FR': 87, 'RA': 88,
        'AC': 89, 'TH': 90, 'PA': 91, 'U': 92, 'NP': 93, 'PU': 94, 'AM': 95, 'CM': 96,
        'BK': 97, 'CF': 98, 'ES': 99, 'FM': 100, 'MD': 101, 'NO': 102, 'LR': 103,
        'RF': 104, 'DB': 105, 'SG': 106, 'BH': 107, 'HS': 108, 'MT': 109, 'DS': 110,
        'RG': 111, 'CN': 112, 'NH': 113, 'FL': 114, 'MC': 115, 'LV': 116, 'TS': 117,
        'OG': 118
    }
    return periodic_table.get(symbol.upper(), 999)  # Return 999 for unknown elements

# Example usage
if __name__ == "__main__":
    basis_sets = ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk']
    #basis_sets = ['6-31G']
    elements = ['H', 'He']
    
    fortran_code = json_to_gamess_fortran(basis_sets)
    
    # Save to file
    with open('basis_fortran.f90', 'w') as f:
        f.write(fortran_code)
    
    print("Generated Fortran code:")
    print("=" * 70)
    print(fortran_code[:2000])  # Print first 2000 characters
    print("...")
    print("=" * 70)
    print(f"\nSaved to basis_fortran.f90")
