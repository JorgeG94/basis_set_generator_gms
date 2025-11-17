module basis_pcseg
  use periodic_table
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: PCSEG_0, PCSEG_1, PCSEG_2, PCSEG_3, PCSEG_4
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_pcseg_basis

  interface

    module subroutine get_pcseg_basis_pcseg_0(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pcseg_basis_pcseg_0

    module subroutine get_pcseg_basis_pcseg_1(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pcseg_basis_pcseg_1

    module subroutine get_pcseg_basis_pcseg_2(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pcseg_basis_pcseg_2

    module subroutine get_pcseg_basis_pcseg_3(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pcseg_basis_pcseg_3

    module subroutine get_pcseg_basis_pcseg_4(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pcseg_basis_pcseg_4

  end interface

contains

  subroutine get_pcseg_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (PCSEG_0)
        call get_pcseg_basis_pcseg_0(basis_data, element_number, ilast)

      case (PCSEG_1)
        call get_pcseg_basis_pcseg_1(basis_data, element_number, ilast)

      case (PCSEG_2)
        call get_pcseg_basis_pcseg_2(basis_data, element_number, ilast)

      case (PCSEG_3)
        call get_pcseg_basis_pcseg_3(basis_data, element_number, ilast)

      case (PCSEG_4)
        call get_pcseg_basis_pcseg_4(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_pcseg_basis

end module basis_pcseg