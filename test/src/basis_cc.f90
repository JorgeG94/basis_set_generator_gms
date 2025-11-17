module basis_cc
  use periodic_table
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: CC_PVDZ, CC_PVTZ, CC_PVQZ, CC_PV5Z, CC_PV6Z
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_cc_basis

  interface

    module subroutine get_cc_basis_cc_pvdz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_basis_cc_pvdz

    module subroutine get_cc_basis_cc_pvtz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_basis_cc_pvtz

    module subroutine get_cc_basis_cc_pvqz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_basis_cc_pvqz

    module subroutine get_cc_basis_cc_pv5z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_basis_cc_pv5z

    module subroutine get_cc_basis_cc_pv6z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_cc_basis_cc_pv6z

  end interface

contains

  subroutine get_cc_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (CC_PVDZ)
        call get_cc_basis_cc_pvdz(basis_data, element_number, ilast)

      case (CC_PVTZ)
        call get_cc_basis_cc_pvtz(basis_data, element_number, ilast)

      case (CC_PVQZ)
        call get_cc_basis_cc_pvqz(basis_data, element_number, ilast)

      case (CC_PV5Z)
        call get_cc_basis_cc_pv5z(basis_data, element_number, ilast)

      case (CC_PV6Z)
        call get_cc_basis_cc_pv6z(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_cc_basis

end module basis_cc