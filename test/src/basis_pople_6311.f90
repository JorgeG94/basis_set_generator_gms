module basis_pople_6311
  use periodic_table, only: H, HE, LI, BE, B, C, N, O, F, NE, NA, MG, AL, SI, P, S, CL, AR, K, CA, GA, GE, AS, SE, BR, KR, I
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: B_6_311G, B_6_311PLUSG, B_6_311PLUSPLUSG, B_6_311GSTAR, B_6_311PLUSGSTAR, B_6_311PLUSPLUSGSTAR, B_6_311GSTARSTAR, B_6_311PLUSGSTARSTAR, B_6_311PLUSPLUSGSTARSTAR, B_6_311G_2DF_2PD, B_6_311PLUSPLUSG_3DF_3PD
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_pople_6311_basis

  interface

    module subroutine get_pople_6311_basis_b_6_311g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311g

    module subroutine get_pople_6311_basis_b_6_311plusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusg

    module subroutine get_pople_6311_basis_b_6_311plusplusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusplusg

    module subroutine get_pople_6311_basis_b_6_311gstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311gstar

    module subroutine get_pople_6311_basis_b_6_311plusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusgstar

    module subroutine get_pople_6311_basis_b_6_311plusplusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusplusgstar

    module subroutine get_pople_6311_basis_b_6_311gstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311gstarstar

    module subroutine get_pople_6311_basis_b_6_311plusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusgstarstar

    module subroutine get_pople_6311_basis_b_6_311plusplusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusplusgstarstar

    module subroutine get_pople_6311_basis_b_6_311g_2df_2pd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311g_2df_2pd

    module subroutine get_pople_6311_basis_b_6_311plusplusg_3df_3pd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_pople_6311_basis_b_6_311plusplusg_3df_3pd

  end interface

contains

  subroutine get_pople_6311_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (B_6_311G)
        call get_pople_6311_basis_b_6_311g(basis_data, element_number, ilast)

      case (B_6_311PLUSG)
        call get_pople_6311_basis_b_6_311plusg(basis_data, element_number, ilast)

      case (B_6_311PLUSPLUSG)
        call get_pople_6311_basis_b_6_311plusplusg(basis_data, element_number, ilast)

      case (B_6_311GSTAR)
        call get_pople_6311_basis_b_6_311gstar(basis_data, element_number, ilast)

      case (B_6_311PLUSGSTAR)
        call get_pople_6311_basis_b_6_311plusgstar(basis_data, element_number, ilast)

      case (B_6_311PLUSPLUSGSTAR)
        call get_pople_6311_basis_b_6_311plusplusgstar(basis_data, element_number, ilast)

      case (B_6_311GSTARSTAR)
        call get_pople_6311_basis_b_6_311gstarstar(basis_data, element_number, ilast)

      case (B_6_311PLUSGSTARSTAR)
        call get_pople_6311_basis_b_6_311plusgstarstar(basis_data, element_number, ilast)

      case (B_6_311PLUSPLUSGSTARSTAR)
        call get_pople_6311_basis_b_6_311plusplusgstarstar(basis_data, element_number, ilast)

      case (B_6_311G_2DF_2PD)
        call get_pople_6311_basis_b_6_311g_2df_2pd(basis_data, element_number, ilast)

      case (B_6_311PLUSPLUSG_3DF_3PD)
        call get_pople_6311_basis_b_6_311plusplusg_3df_3pd(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_pople_6311_basis

end module basis_pople_6311