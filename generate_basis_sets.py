import basis_set_exchange as bse
import json

ELEMENT_ORDER = {
    # Period 1
    'H': ('HYDROGEN', 1), 'HE': ('HELIUM', 2),
    # Period 2
    'LI': ('LITHIUM', 3), 'BE': ('BERYLLIUM', 4), 'B': ('BORON', 5), 'C': ('CARBON', 6),
    'N': ('NITROGEN', 7), 'O': ('OXYGEN', 8), 'F': ('FLUORINE', 9), 'NE': ('NEON', 10),
    # Period 3
    'NA': ('SODIUM', 11), 'MG': ('MAGNESIUM', 12), 'AL': ('ALUMINUM', 13), 'SI': ('SILICON', 14),
    'P': ('PHOSPHORUS', 15), 'S': ('SULFUR', 16), 'CL': ('CHLORINE', 17), 'AR': ('ARGON', 18),
    # Period 4
    'K': ('POTASSIUM', 19), 'CA': ('CALCIUM', 20), 'SC': ('SCANDIUM', 21), 'TI': ('TITANIUM', 22),
    'V': ('VANADIUM', 23), 'CR': ('CHROMIUM', 24), 'MN': ('MANGANESE', 25), 'FE': ('IRON', 26),
    'CO': ('COBALT', 27), 'NI': ('NICKEL', 28), 'CU': ('COPPER', 29), 'ZN': ('ZINC', 30),
    'GA': ('GALLIUM', 31), 'GE': ('GERMANIUM', 32), 'AS': ('ARSENIC', 33), 'SE': ('SELENIUM', 34),
    'BR': ('BROMINE', 35), 'KR': ('KRYPTON', 36),
    # Period 5
    'RB': ('RUBIDIUM', 37), 'SR': ('STRONTIUM', 38), 'Y': ('YTTRIUM', 39), 'ZR': ('ZIRCONIUM', 40),
    'NB': ('NIOBIUM', 41), 'MO': ('MOLYBDENUM', 42), 'TC': ('TECHNETIUM', 43), 'RU': ('RUTHENIUM', 44),
    'RH': ('RHODIUM', 45), 'PD': ('PALLADIUM', 46), 'AG': ('SILVER', 47), 'CD': ('CADMIUM', 48),
    'IN': ('INDIUM', 49), 'SN': ('TIN', 50), 'SB': ('ANTIMONY', 51), 'TE': ('TELLURIUM', 52),
    'I': ('IODINE', 53), 'XE': ('XENON', 54),
    # Period 6
    'CS': ('CESIUM', 55), 'BA': ('BARIUM', 56),
    'LA': ('LANTHANUM', 57), 'CE': ('CERIUM', 58), 'PR': ('PRASEODYMIUM', 59), 'ND': ('NEODYMIUM', 60),
    'PM': ('PROMETHIUM', 61), 'SM': ('SAMARIUM', 62), 'EU': ('EUROPIUM', 63), 'GD': ('GADOLINIUM', 64),
    'TB': ('TERBIUM', 65), 'DY': ('DYSPROSIUM', 66), 'HO': ('HOLMIUM', 67), 'ER': ('ERBIUM', 68),
    'TM': ('THULIUM', 69), 'YB': ('YTTERBIUM', 70), 'LU': ('LUTETIUM', 71),
    'HF': ('HAFNIUM', 72), 'TA': ('TANTALUM', 73), 'W': ('TUNGSTEN', 74), 'RE': ('RHENIUM', 75),
    'OS': ('OSMIUM', 76), 'IR': ('IRIDIUM', 77), 'PT': ('PLATINUM', 78), 'AU': ('GOLD', 79),
    'HG': ('MERCURY', 80), 'TL': ('THALLIUM', 81), 'PB': ('LEAD', 82), 'BI': ('BISMUTH', 83),
    'PO': ('POLONIUM', 84), 'AT': ('ASTATINE', 85), 'RN': ('RADON', 86),
    # Period 7
    'FR': ('FRANCIUM', 87), 'RA': ('RADIUM', 88),
    'AC': ('ACTINIUM', 89), 'TH': ('THORIUM', 90), 'PA': ('PROTACTINIUM', 91), 'U': ('URANIUM', 92),
    'NP': ('NEPTUNIUM', 93), 'PU': ('PLUTONIUM', 94), 'AM': ('AMERICIUM', 95), 'CM': ('CURIUM', 96),
    'BK': ('BERKELIUM', 97), 'CF': ('CALIFORNIUM', 98), 'ES': ('EINSTEINIUM', 99), 'FM': ('FERMIUM', 100),
    'MD': ('MENDELEVIUM', 101), 'NO': ('NOBELIUM', 102), 'LR': ('LAWRENCIUM', 103),
    'RF': ('RUTHERFORDIUM', 104), 'DB': ('DUBNIUM', 105), 'SG': ('SEABORGIUM', 106), 'BH': ('BOHRIUM', 107),
    'HS': ('HASSIUM', 108), 'MT': ('MEITNERIUM', 109), 'DS': ('DARMSTADTIUM', 110), 'RG': ('ROENTGENIUM', 111),
    'CN': ('COPERNICIUM', 112), 'NH': ('NIHONIUM', 113), 'FL': ('FLEROVIUM', 114), 'MC': ('MOSCOVIUM', 115),
    'LV': ('LIVERMORIUM', 116), 'TS': ('TENNESSINE', 117), 'OG': ('OGANESSON', 118)
}

def get_element_name(symbol):
    """Get full element name and atomic number from symbol"""
    if symbol in ELEMENT_ORDER:
        return ELEMENT_ORDER[symbol][0], ELEMENT_ORDER[symbol][1]
    else:
        # Fallback: uppercase symbol + atomic number placeholder
        return f"ELEMENT_{symbol.upper()}", 999

def generate_periodic_table_module():
    """Generate periodic_table.f90 with element constants using full names."""
    fortran_lines = []
    
    fortran_lines.append("module periodic_table")
    fortran_lines.append("  implicit none")
    fortran_lines.append("")
    fortran_lines.append("  ! Element atomic numbers")
    
    # Sort elements by atomic number
    sorted_elements = sorted(ELEMENT_ORDER.items(), key=lambda x: x[1][1])
    
    # Group into lines of reasonable length
    fortran_lines.append("  integer, parameter :: &")
    
    param_lines = []
    for elem_symbol, (full_name, atomic_num) in sorted_elements:
        param_lines.append(f"    {full_name} = {atomic_num}")
    
    # Join with continuation
    fortran_lines.append(", &\n".join(param_lines))
    fortran_lines.append("")
    fortran_lines.append("end module periodic_table")
    
    return '\n'.join(fortran_lines)


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

def sanitize_basis_name(basis_name):
    """Convert basis set name to valid Fortran identifier"""
    # Replace special characters with underscores
    safe = basis_name.lower()
    safe = safe.replace('+', 'plus')
    safe = safe.replace('*', 'star')
    safe = safe.replace('(', '_')
    safe = safe.replace(')', '')
    safe = safe.replace(',', '_')
    safe = safe.replace('-', '_')
    
    # If it starts with a digit, prefix with 'b_' (for basis)
    if safe[0].isdigit():
        safe = 'b_' + safe
    
    return safe

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

def strip_family_prefix(basis_name, family_name):
    """Remove family prefix from basis name to avoid redundancy in filenames."""
    # Convert both to lowercase for comparison
    basis_lower = basis_name.lower()
    family_lower = family_name.lower().replace('_', '-')
    
    # Try to strip the family prefix
    if basis_lower.startswith(family_lower + '-'):
        return basis_name[len(family_lower)+1:]  # +1 for the hyphen
    return basis_name

def generate_basis_constants_module(basis_families):
    """Generate a module with named constants for all basis sets across families."""
    fortran_lines = []
    
    fortran_lines.append("module basis_set_constants")
    fortran_lines.append("  implicit none")
    fortran_lines.append("")
    fortran_lines.append("  ! Basis set type constants")
    fortran_lines.append("  ! Each family gets a range of 100 values")
    fortran_lines.append("")
    
    base_value = 1
    family_ranges = {}
    
    # Generate enums for each family
    for family_idx, (family_name, basis_sets) in enumerate(basis_families.items()):
        family_base = family_idx * 100 + 1
        family_ranges[family_name] = (family_base, family_base + len(basis_sets) - 1)
        
        fortran_lines.append(f"  ! {family_name.upper()} family ({family_base}-{family_base + len(basis_sets) - 1})")
        fortran_lines.append(f"  enum, bind(c)")
        fortran_lines.append(f"    enumerator :: {family_name.upper()}_BASE = {family_base - 1}")
        
        for basis_idx, basis_name in enumerate(basis_sets):
            safe_name = sanitize_basis_name(basis_name)
            # Don't prepend family name, just use the sanitized basis name
            const_name = safe_name.upper()
            fortran_lines.append(f"    enumerator :: {const_name}")
        
        fortran_lines.append("  end enum")
        fortran_lines.append("")
    
    fortran_lines.append("end module basis_set_constants")
    
    return '\n'.join(fortran_lines)

def generate_unified_driver_module(basis_families):
    """Generate a single unified driver module with all basis sets."""
    fortran_lines = []
    
    # Module header
    fortran_lines.append("module basis_driver")
    fortran_lines.append("  use periodic_table")
    fortran_lines.append("  use basis_set_data, only: basis_set_type")
    fortran_lines.append("  use basis_set_constants")
    fortran_lines.append("  use iso_fortran_env, only: real64")
    fortran_lines.append("  implicit none")
    fortran_lines.append("  private")
    fortran_lines.append("  public :: load_basis")
    fortran_lines.append("")
    
    # Interface for ALL worker subroutines across ALL families
    fortran_lines.append("  interface")
    fortran_lines.append("")
    
    for family_name, basis_sets in basis_families.items():
        for basis_name in basis_sets:
            safe_name = sanitize_basis_name(basis_name)
            worker_name = f"get_basis_{safe_name}"
            
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
    
    # Generate the unified load_basis subroutine
    fortran_lines.append("  subroutine load_basis(basis_data, element_number, basis_type, ilast)")
    fortran_lines.append("    type(basis_set_type), intent(out) :: basis_data")
    fortran_lines.append("    integer, intent(in) :: element_number, basis_type")
    fortran_lines.append("    integer, intent(out) :: ilast")
    fortran_lines.append("    integer :: iw")
    fortran_lines.append("    logical :: maswrk")
    fortran_lines.append("")
    fortran_lines.append("    maswrk = .true.")
    fortran_lines.append("    iw = 6")
    fortran_lines.append("    ilast = 0")
    fortran_lines.append("")
    fortran_lines.append("    select case (basis_type)")
    fortran_lines.append("")
    
    # Create cases for ALL basis sets across ALL families
    for family_name, basis_sets in basis_families.items():
        fortran_lines.append(f"      ! {family_name.upper()} family")
        for basis_name in basis_sets:
            safe_name = sanitize_basis_name(basis_name)
            const_name = safe_name.upper()
            worker_name = f"get_basis_{safe_name}"
            
            fortran_lines.append(f"      case ({const_name})")
            fortran_lines.append(f"        call {worker_name}(basis_data, element_number, ilast)")
        fortran_lines.append("")
    
    # Default case
    fortran_lines.append("      case default")
    fortran_lines.append("        if(maswrk) write(iw,*) 'ERROR: Basis type', basis_type, 'not supported'")
    fortran_lines.append("        ilast = -1")
    fortran_lines.append("        return")
    fortran_lines.append("    end select")
    fortran_lines.append("")
    fortran_lines.append("  end subroutine load_basis")
    fortran_lines.append("")
    fortran_lines.append("end module basis_driver")
    
    return '\n'.join(fortran_lines)


def generate_basis_submodule(basis_name, elements, basis_dict):
    """Generate a standalone submodule for a specific basis set."""
    fortran_lines = []
    
    safe_name = sanitize_basis_name(basis_name)
    worker_name = f"get_basis_{safe_name}"
    submodule_name = f"basis_driver_{safe_name}"
    
    # Submodule header
    fortran_lines.append(f"submodule (basis_driver) {submodule_name}")
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
    
    # Process each element (same as before)
    for elem_symbol in elements:
        full_name, atomic_num = get_element_name(elem_symbol)
        
        fortran_lines.append(f"      case({full_name})")
        
        # Find the correct key for this element
        element_key = None
        elem_lower = elem_symbol.lower()
        for key in basis_dict['center_data'].keys():
            if key.lower().startswith(elem_lower + '_'):
                element_key = key
                break
        
        if element_key is None:
            fortran_lines.append(f"        if(maswrk) write(iw,*) 'ERROR: {basis_name} basis not available for element {full_name}'")
            fortran_lines.append("        ilast = -1")
            fortran_lines.append("        return")
        else:
            element_data = basis_dict['center_data'][element_key]
            
            # Process shells (same as before)
            index = 1
            for shell in element_data['electron_shells']:
                am = shell['angular_momentum'][0]
                am_label = ['s_coef', 'p_coef', 'd_coef', 'f_coef', 'g_coef', 'h_coef', 'i_coef'][am]
                exponents = [float(e) for e in shell['exponents']]
                coefficients = shell['coefficients']
                
                for coef_set in coefficients:
                    coefs = [float(c) for c in coef_set]
                    non_zero_indices = [i for i, c in enumerate(coefs) if abs(c) > 1e-10]
                    
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
    fortran_lines.append("        if(maswrk) write(iw,*) 'ERROR: Element not supported in basis', element_number")
    fortran_lines.append("        ilast = -1")
    fortran_lines.append("        return")
    fortran_lines.append("    end select")
    fortran_lines.append("")
    fortran_lines.append(f"  end subroutine {worker_name}")
    fortran_lines.append("")
    fortran_lines.append(f"end submodule {submodule_name}")
    
    return '\n'.join(fortran_lines)


if __name__ == "__main__":
    # Define basis set families
    basis_families = {
        'cc_dk': ['cc-pvdz-dk', 'cc-pvtz-dk', 'cc-pvqz-dk', 'cc-pv5z-dk'],
        'aug_cc_dk': ['aug-cc-pvdz-dk', 'aug-cc-pvtz-dk', 'aug-cc-pvqz-dk', 'aug-cc-pv5z-dk'],
        'cc': ['cc-pvdz', 'cc-pvtz', 'cc-pvqz', 'cc-pv5z', 'cc-pv6z'],
        'aug_cc': ['aug-cc-pvdz', 'aug-cc-pvtz', 'aug-cc-pvqz', 'aug-cc-pv5z', 'aug-cc-pv6z'],
        'sto': ['sto-3g', 'sto-4g', 'sto-5g', 'sto-6g'],
        'pople_631': ['6-31G', '6-31+G', '6-31++G','6-31G*', '6-31+G*', '6-31++G*', '6-31G**', '6-31+G**', '6-31++G**','6-31G(2df,p)', '6-31G(3df,3pd)'],
        'pople_6311': ['6-311G', '6-311+G', '6-311++G','6-311G*', '6-311+G*', '6-311++G*', '6-311G**', '6-311+G**', '6-311++G**','6-311G(2df,2pd)', '6-311++G(3df,3pd)'],
        'pcseg': ['pcseg-0', 'pcseg-1', 'pcseg-2', 'pcseg-3', 'pcseg-4'],
        'aug_pcseg': ['aug-pcseg-0', 'aug-pcseg-1', 'aug-pcseg-2', 'aug-pcseg-3', 'aug-pcseg-4'],
        'def2': ['def2-svp', 'def2-svpd', 'def2-tzvp', 'def2-tzvpp', 'def2-tzvpd', 'def2-tzvppd',
                 'def2-qzvp', 'def2-qzvpd', 'def2-qzvpp', 'def2-qzvppd']
    }


    # Generate constants module
    constants_module = generate_basis_constants_module(basis_families)
    with open('basis_set_constants.f90', 'w') as f:
        f.write(constants_module)
    print("Generated basis_set_constants.f90")

    # Generate periodic table
    periodic_table_module = generate_periodic_table_module()
    with open('periodic_table.f90', 'w') as f:
        f.write(periodic_table_module)
    print("Generated periodic_table.f90")
    
    # # Generate lookup module
    # lookup_module = generate_basis_lookup_module(basis_families)
    # with open('src/basis_set_lookup.f90', 'w') as f:
    #     f.write(lookup_module)
    # print("Generated basis_set_lookup.f90")

    # Generate unified driver module
    driver_module = generate_unified_driver_module(basis_families)
    with open('basis_driver.f90', 'w') as f:
        f.write(driver_module)
    print("Generated basis_driver.f90")

    # Fetch all basis set data once
    print("\nFetching all basis sets...")
    all_basis_data = {}
    all_elements = set()
    
    for family_name, basis_sets in basis_families.items():
        for basis_name in basis_sets:
            print(f"  Fetching {basis_name}...")
            basis_result = bse.get_basis(
                basis_name,
                elements=None,
                fmt='qcschema',
                optimize_general=True
            )
            if isinstance(basis_result, str):
                all_basis_data[basis_name] = json.loads(basis_result)
            else:
                all_basis_data[basis_name] = basis_result
            
            # Collect elements
            for key in all_basis_data[basis_name]['center_data'].keys():
                elem_symbol = key.split('_')[0].upper()
                all_elements.add(elem_symbol)
    
    elements_to_use = sorted(list(all_elements), key=lambda x: get_element_name(x)[1])
    
    # Generate individual submodules for each basis set
    print("\nGenerating basis set submodules...")
    for family_name, basis_sets in basis_families.items():
        for basis_name in basis_sets:
            safe_name = sanitize_basis_name(basis_name)
            submodule_code = generate_basis_submodule(
                basis_name, 
                elements_to_use, 
                all_basis_data[basis_name]
            )
            
            filename = f"basis_driver_{safe_name}.f90"
            with open(filename, 'w') as f:
                f.write(submodule_code)
            print(f"  Generated {filename}")
    
    print(f"\nDone! Generated {len(all_basis_data)} basis set submodules")
