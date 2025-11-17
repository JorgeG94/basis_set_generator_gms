module basis_def2
  use periodic_table
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: DEF2_SVP, DEF2_SVPD, DEF2_TZVP, DEF2_TZVPP, DEF2_TZVPD, DEF2_TZVPPD, DEF2_QZVP, DEF2_QZVPD, DEF2_QZVPP, DEF2_QZVPPD
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_def2_basis

  interface

    module subroutine get_def2_basis_def2_svp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_svp

    module subroutine get_def2_basis_def2_svpd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_svpd

    module subroutine get_def2_basis_def2_tzvp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_tzvp

    module subroutine get_def2_basis_def2_tzvpp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_tzvpp

    module subroutine get_def2_basis_def2_tzvpd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_tzvpd

    module subroutine get_def2_basis_def2_tzvppd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_tzvppd

    module subroutine get_def2_basis_def2_qzvp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_qzvp

    module subroutine get_def2_basis_def2_qzvpd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_qzvpd

    module subroutine get_def2_basis_def2_qzvpp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_qzvpp

    module subroutine get_def2_basis_def2_qzvppd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_def2_basis_def2_qzvppd

  end interface

contains

  subroutine get_def2_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (DEF2_SVP)
        call get_def2_basis_def2_svp(basis_data, element_number, ilast)

      case (DEF2_SVPD)
        call get_def2_basis_def2_svpd(basis_data, element_number, ilast)

      case (DEF2_TZVP)
        call get_def2_basis_def2_tzvp(basis_data, element_number, ilast)

      case (DEF2_TZVPP)
        call get_def2_basis_def2_tzvpp(basis_data, element_number, ilast)

      case (DEF2_TZVPD)
        call get_def2_basis_def2_tzvpd(basis_data, element_number, ilast)

      case (DEF2_TZVPPD)
        call get_def2_basis_def2_tzvppd(basis_data, element_number, ilast)

      case (DEF2_QZVP)
        call get_def2_basis_def2_qzvp(basis_data, element_number, ilast)

      case (DEF2_QZVPD)
        call get_def2_basis_def2_qzvpd(basis_data, element_number, ilast)

      case (DEF2_QZVPP)
        call get_def2_basis_def2_qzvpp(basis_data, element_number, ilast)

      case (DEF2_QZVPPD)
        call get_def2_basis_def2_qzvppd(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_def2_basis

end module basis_def2