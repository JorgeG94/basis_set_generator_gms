module basis_aug_ccn
  use periodic_table, only: H, HE, LI, BE, B, C, N, O, F, NE, NA, MG, AL, SI, P, S, CL, AR, SC, TI, V, CR, MN, FE, CO, NI, CU, ZN, GA, GE, AS, SE, BR, KR
  use basis_types, only: n_zeta_to_basis, PVDZ, PVTZ, PVQZ, PV5Z, PV6Z
  use basis_set_data, only: basis_set_type
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_aug_ccn_basis

  interface

    module subroutine get_aug_ccn_basis_pvdz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_ccn_basis_pvdz

    module subroutine get_aug_ccn_basis_pvtz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_ccn_basis_pvtz

    module subroutine get_aug_ccn_basis_pvqz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_ccn_basis_pvqz

    module subroutine get_aug_ccn_basis_pv5z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_ccn_basis_pv5z

    module subroutine get_aug_ccn_basis_pv6z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_ccn_basis_pv6z

  end interface

contains

  subroutine get_aug_ccn_basis(basis_data, element_number, n_zeta, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, n_zeta
    integer, intent(out) :: ilast
    integer :: basis_type
    integer :: iw
    logical :: maswrk

    basis_type = n_zeta_to_basis(n_zeta)
    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (PVDZ)
        call get_aug_ccn_basis_pvdz(basis_data, element_number, ilast)

      case (PVTZ)
        call get_aug_ccn_basis_pvtz(basis_data, element_number, ilast)

      case (PVQZ)
        call get_aug_ccn_basis_pvqz(basis_data, element_number, ilast)

      case (PV5Z)
        call get_aug_ccn_basis_pv5z(basis_data, element_number, ilast)

      case (PV6Z)
        call get_aug_ccn_basis_pv6z(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_aug_ccn_basis

end module basis_aug_ccn
