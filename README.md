# Basis set generator 

This is a sample generator that uses the basis set exchange python API to 
download an reinrpret a basis set using optimized general contractions and produces
a module with the corresponding subroutines with each one of the subroutines needed
placed in a submodule for easier compilation

Just: `python generate_basis_sets.py` 

You'll need `pip install basis-set-exchange`.

Currently, it will generate modules and submoduls for the following basis sets:
```
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
```

I still need to figure out the best way for the interface. Currently the idea is:

```fortran
  subroutine get_sto_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (STO_3G)
        call get_sto_basis_sto_3g(basis_data, element_number, ilast)

      case (STO_4G)
        call get_sto_basis_sto_4g(basis_data, element_number, ilast)

      case (STO_5G)
        call get_sto_basis_sto_5g(basis_data, element_number, ilast)

      case (STO_6G)
        call get_sto_basis_sto_6g(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_sto_basis
```

The main driver has defined constants for the basis sets we need, e.g. `STO-3G`

So the caller should be:

```
ilast = 1
do i = 1, n_elements
  call get_sto_basis(basis_data, elements(i), STO-3G, ilast)
end do 
```

Where the basis set data has been repurposed into a derived type:

```fortran
  integer, parameter :: nbas_dims = 424
  type :: basis_set_type
    real(real64) :: exponents(nbas_dims)
    real(real64) :: s_coef(nbas_dims)
    real(real64) :: p_coef(nbas_dims)
    real(real64) :: d_coef(nbas_dims)
    real(real64) :: f_coef(nbas_dims)
    real(real64) :: g_coef(nbas_dims)
    real(real64) :: h_coef(nbas_dims)
    real(real64) :: i_coef(nbas_dims)
  contains
    procedure :: initialize => basis_set_initialize
    procedure :: print => basis_set_print
  end type basis_set_type
```

Which should be repurposed to be dynamically allocated. 

So now we just need to pass the basis data object around to hold all the data we need. 
