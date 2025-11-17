module basis_cc_dk
  use periodic_table, only: H, HE, LI, BE, B, C, N, O, F, NE, NA, MG, AL, SI, P, S, CL, AR, SC, TI, V, CR, MN, FE, CO, NI, CU, ZN, GA, GE, AS, SE, BR, KR, Y, ZR, NB, MO, TC, RU, RH, PD
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: CC_PVDZ_DK, CC_PVTZ_DK, CC_PVQZ_DK, CC_PV5Z_DK
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_cc_dk_basis

  interface

    module subroutine get_cc_dk_basis_cc_pvdz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_dk_basis_cc_pvdz_dk

    module subroutine get_cc_dk_basis_cc_pvtz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_dk_basis_cc_pvtz_dk

    module subroutine get_cc_dk_basis_cc_pvqz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_dk_basis_cc_pvqz_dk

    module subroutine get_cc_dk_basis_cc_pv5z_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_dk_basis_cc_pv5z_dk

  end interface

contains

  subroutine get_cc_dk_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (CC_PVDZ_DK)
        call get_cc_dk_basis_cc_pvdz_dk(basis_data, element_number, ilast)

      case (CC_PVTZ_DK)
        call get_cc_dk_basis_cc_pvtz_dk(basis_data, element_number, ilast)

      case (CC_PVQZ_DK)
        call get_cc_dk_basis_cc_pvqz_dk(basis_data, element_number, ilast)

      case (CC_PV5Z_DK)
        call get_cc_dk_basis_cc_pv5z_dk(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_cc_dk_basis

end module basis_cc_dk