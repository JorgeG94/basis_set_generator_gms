module basis_pople_631
  use periodic_table
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: B_6_31G, B_6_31PLUSG, B_6_31PLUSPLUSG, B_6_31GSTAR, B_6_31PLUSGSTAR, B_6_31PLUSPLUSGSTAR, B_6_31GSTARSTAR, B_6_31PLUSGSTARSTAR, B_6_31PLUSPLUSGSTARSTAR, B_6_31G_2DF_P, B_6_31G_3DF_3PD
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_pople_631_basis

  interface

    module subroutine get_pople_631_basis_b_6_31g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31g

    module subroutine get_pople_631_basis_b_6_31plusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31plusg

    module subroutine get_pople_631_basis_b_6_31plusplusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31plusplusg

    module subroutine get_pople_631_basis_b_6_31gstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31gstar

    module subroutine get_pople_631_basis_b_6_31plusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31plusgstar

    module subroutine get_pople_631_basis_b_6_31plusplusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31plusplusgstar

    module subroutine get_pople_631_basis_b_6_31gstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31gstarstar

    module subroutine get_pople_631_basis_b_6_31plusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31plusgstarstar

    module subroutine get_pople_631_basis_b_6_31plusplusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31plusplusgstarstar

    module subroutine get_pople_631_basis_b_6_31g_2df_p(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31g_2df_p

    module subroutine get_pople_631_basis_b_6_31g_3df_3pd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_631_basis_b_6_31g_3df_3pd

  end interface

contains

  subroutine get_pople_631_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (B_6_31G)
        call get_pople_631_basis_b_6_31g(basis_data, element_number, ilast)

      case (B_6_31PLUSG)
        call get_pople_631_basis_b_6_31plusg(basis_data, element_number, ilast)

      case (B_6_31PLUSPLUSG)
        call get_pople_631_basis_b_6_31plusplusg(basis_data, element_number, ilast)

      case (B_6_31GSTAR)
        call get_pople_631_basis_b_6_31gstar(basis_data, element_number, ilast)

      case (B_6_31PLUSGSTAR)
        call get_pople_631_basis_b_6_31plusgstar(basis_data, element_number, ilast)

      case (B_6_31PLUSPLUSGSTAR)
        call get_pople_631_basis_b_6_31plusplusgstar(basis_data, element_number, ilast)

      case (B_6_31GSTARSTAR)
        call get_pople_631_basis_b_6_31gstarstar(basis_data, element_number, ilast)

      case (B_6_31PLUSGSTARSTAR)
        call get_pople_631_basis_b_6_31plusgstarstar(basis_data, element_number, ilast)

      case (B_6_31PLUSPLUSGSTARSTAR)
        call get_pople_631_basis_b_6_31plusplusgstarstar(basis_data, element_number, ilast)

      case (B_6_31G_2DF_P)
        call get_pople_631_basis_b_6_31g_2df_p(basis_data, element_number, ilast)

      case (B_6_31G_3DF_3PD)
        call get_pople_631_basis_b_6_31g_3df_3pd(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_pople_631_basis

end module basis_pople_631