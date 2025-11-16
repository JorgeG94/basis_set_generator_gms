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

def json_to_gamess_fortran_modular(basis_names, elements=None, module_name="basis_ccn_dk", base_subroutine_name="get_ccn_dk_basis"):
    """
    Generate modular GAMESS Fortran module with submodules for parallel compilation.
    Uses a derived type for basis set data.
    
    Args:
        basis_names: List of basis set names (e.g., ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk'])
        elements: List of element symbols (e.g., ['H', 'He']) or None to get all available
        module_name: Name of the module to wrap everything
        base_subroutine_name: Base name for subroutines
    
    Returns:
        Dictionary with module and submodule codes
    """
    
    # Download all basis sets and determine which elements are available
    basis_data = {}
    elements_per_basis = {}
    
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
        
        # Extract elements for this basis
        elements_in_basis = set()
        for key in basis_data[basis_name]['center_data'].keys():
            elem_symbol = key.split('_')[0].upper()
            elements_in_basis.add(elem_symbol)
        elements_per_basis[basis_name] = elements_in_basis
    
    # Find union of all elements across ALL basis sets
    if elements is None:
        all_elements = set.union(*elements_per_basis.values())
        elements_to_use = sorted(list(all_elements), key=get_atomic_number)
        print(f"Found {len(elements_to_use)} total elements across all basis sets: {elements_to_use}")
    else:
        elements_to_use = sorted(elements, key=lambda x: get_atomic_number(x.upper()))
    
    # Report coverage
    print("\nElement coverage:")
    for elem in elements_to_use:
        available_in = [basis for basis, elems in elements_per_basis.items() if elem in elems]
        missing_in = [basis for basis, elems in elements_per_basis.items() if elem not in elems]
        if missing_in:
            print(f"  {elem}: available in {len(available_in)}/{len(basis_names)} basis sets (missing: {', '.join(missing_in)})")
    
    # Dictionary to hold all files
    fortran_files = {}
    
    # Generate main module with interfaces
    main_module = generate_main_module(module_name, base_subroutine_name, elements_to_use, basis_names)
    fortran_files[f"{module_name}.f90"] = main_module
    
    # Generate submodules for each zeta level
    for n_zeta_idx, basis_name in enumerate(basis_names, start=1):
        basis_const_name = zeta_index_to_basis_name(n_zeta_idx)
        worker_name = f"{base_subroutine_name}_{basis_const_name.lower()}"
        submodule_name = f"{module_name}_{basis_const_name.lower()}"
        
        submodule_code = generate_worker_submodule(
            module_name, submodule_name, basis_name, basis_const_name, 
            worker_name, elements_to_use, basis_data[basis_name]
        )
        fortran_files[f"{submodule_name}.f90"] = submodule_code
    
    return fortran_files


def generate_main_module(module_name, base_subroutine_name, elements, basis_names):
    """Generate the main module with interface definitions and driver."""
    fortran_lines = []
    
    elem_imports = ', '.join([e.upper() for e in elements])
    
    # Module header
    fortran_lines.append(f"module {module_name}")
    fortran_lines.append(f"  use periodic_table, only: {elem_imports}")
    fortran_lines.append("  use basis_types, only: n_zeta_to_basis, PVDZ, PVTZ, PVQZ, PV5Z")
    fortran_lines.append("  use basis_set_data, only: basis_set_type")
    fortran_lines.append("  use iso_fortran_env, only: real64")
    fortran_lines.append("  implicit none")
    fortran_lines.append("  private")
    fortran_lines.append(f"  public :: {base_subroutine_name}")
    fortran_lines.append("")
    
    # Interface for worker subroutines
    fortran_lines.append("  interface")
    fortran_lines.append("")
    
    for n_zeta_idx, basis_name in enumerate(basis_names, start=1):
        basis_const_name = zeta_index_to_basis_name(n_zeta_idx)
        worker_name = f"{base_subroutine_name}_{basis_const_name.lower()}"
        
        fortran_lines.append(f"    module subroutine {worker_name}(basis_data, element_number, ilast)")
        fortran_lines.append("      type(basis_set_type), intent(out) :: basis_data")
        fortran_lines.append("      integer, intent(in) :: element_number")
        fortran_lines.append("      integer, intent(out) :: ilast")
        fortran_lines.append(f"    end subroutine {worker_name}")
        fortran_lines.append("")
    
    fortran_lines.append("  end interface")
    fortran_lines.append("")
    fortran_lines.append("contains")
    fortran_lines.append("")
    
    # Generate driver subroutine
    driver_code = generate_driver_subroutine_module(base_subroutine_name, basis_names)
    fortran_lines.append(driver_code)
    fortran_lines.append("")
    
    fortran_lines.append(f"end module {module_name}")
    
    return '\n'.join(fortran_lines)


def generate_driver_subroutine_module(base_name, basis_names):
    """Generate the driver subroutine (stays in main module)."""
    fortran_lines = []
    
    fortran_lines.append(f"  subroutine {base_name}(basis_data, element_number, n_zeta, ilast)")
    fortran_lines.append("    type(basis_set_type), intent(out) :: basis_data")
    fortran_lines.append("    integer, intent(in) :: element_number, n_zeta")
    fortran_lines.append("    integer, intent(out) :: ilast")
    fortran_lines.append("    integer :: basis_type")
    fortran_lines.append("    integer :: iw")
    fortran_lines.append("    logical :: maswrk")
    fortran_lines.append("")
    fortran_lines.append("    basis_type = n_zeta_to_basis(n_zeta)")
    fortran_lines.append("    maswrk = .true.")
    fortran_lines.append("    iw = 6")
    fortran_lines.append("    ilast = 0")
    fortran_lines.append("")
    fortran_lines.append("    select case (basis_type)")
    fortran_lines.append("")
    
    # Create cases for each basis type
    for n_zeta_idx, basis_name in enumerate(basis_names, start=1):
        basis_const_name = zeta_index_to_basis_name(n_zeta_idx)
        worker_name = f"{base_name}_{basis_const_name.lower()}"
        
        fortran_lines.append(f"      case ({basis_const_name})")
        fortran_lines.append(f"        call {worker_name}(basis_data, element_number, ilast)")
        fortran_lines.append("")
    
    # Default case
    fortran_lines.append("      case default")
    fortran_lines.append("        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'")
    fortran_lines.append("        ilast = -1")
    fortran_lines.append("        return")
    fortran_lines.append("    end select")
    fortran_lines.append("")
    fortran_lines.append(f"  end subroutine {base_name}")
    
    return '\n'.join(fortran_lines)


def generate_worker_submodule(parent_module, submodule_name, basis_name, basis_const_name, worker_name, elements, basis_dict):
    """Generate a submodule for a specific zeta level."""
    fortran_lines = []
    
    # Submodule header
    fortran_lines.append(f"submodule ({parent_module}) {submodule_name}")
    fortran_lines.append("  implicit none")
    fortran_lines.append("")
    fortran_lines.append("contains")
    fortran_lines.append("")
    
    # Worker subroutine implementation
    fortran_lines.append(f"  module subroutine {worker_name}(basis_data, element_number, ilast)")
    fortran_lines.append("    type(basis_set_type), intent(out) :: basis_data")
    fortran_lines.append("    integer, intent(in) :: element_number")
    fortran_lines.append("    integer, intent(out) :: ilast")
    fortran_lines.append("    integer :: iw")
    fortran_lines.append("    logical :: maswrk")
    fortran_lines.append("    maswrk = .true.")
    fortran_lines.append("    iw = 6")
    fortran_lines.append("    ilast = 0")
    fortran_lines.append("")
    fortran_lines.append("    select case (element_number)")
    fortran_lines.append("")
    
    # Process each element
    for elem_symbol in elements:
        elem_name = elem_symbol.upper()
        
        fortran_lines.append(f"      case({elem_name})")
        
        # Find the correct key for this element
        element_key = None
        elem_lower = elem_symbol.lower()
        for key in basis_dict['center_data'].keys():
            if key.lower().startswith(elem_lower + '_'):
                element_key = key
                break
        
        if element_key is None:
            # Element not available in this basis set
            fortran_lines.append(f"        if(maswrk) write(iw,*) 'ERROR: {basis_name} basis not available for element {elem_name}'")
            fortran_lines.append("        ilast = -1")
            fortran_lines.append("        return")
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
                        
                        fortran_lines.append(f"        basis_data%exponents({index}) = {exp_str}")
                        fortran_lines.append(f"        basis_data%{am_label}({index}) = {coef_str}")
                        index += 1
            
            fortran_lines.append(f"        ilast = {index - 1}")
        
        fortran_lines.append("")
    
    # Default case
    fortran_lines.append("      case default")
    fortran_lines.append("        if(maswrk) write(iw,*) 'ERROR: Element not supported in this basis subroutine'")
    fortran_lines.append("        ilast = -1")
    fortran_lines.append("        return")
    fortran_lines.append("    end select")
    fortran_lines.append("")
    fortran_lines.append(f"  end subroutine {worker_name}")
    fortran_lines.append("")
    fortran_lines.append(f"end submodule {submodule_name}")
    
    return '\n'.join(fortran_lines)


# Example usage
if __name__ == "__main__":
    basis_sets = ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk']
    
    fortran_files = json_to_gamess_fortran_modular(basis_sets, elements=None)
    
    # Save each file
    for filename, code in fortran_files.items():
        with open(filename, 'w') as f:
            f.write(code)
        print(f"Generated {filename}")
    
    print(f"\nGenerated {len(fortran_files)} Fortran files")
    print("Compile with: gfortran -c basis_ccn_dk.f90 basis_ccn_dk_*.f90")
