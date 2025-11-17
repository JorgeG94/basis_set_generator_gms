module basis_sto
  use periodic_table, only: H, HE, LI, BE, B, C, N, O, F, NE, NA, MG, AL, SI, P, S, CL, AR, K, CA, SC, TI, V, CR, MN, FE, CO, NI, CU, ZN, GA, GE, AS, SE, BR, KR, RB, SR, Y, ZR, NB, MO, TC, RU, RH, PD, AG, CD, IN, SN, SB, TE, I, XE
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: STO_3G, STO_4G, STO_5G, STO_6G
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_sto_basis

  interface

    module subroutine get_sto_basis_sto_3g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_sto_basis_sto_3g

    module subroutine get_sto_basis_sto_4g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_sto_basis_sto_4g

    module subroutine get_sto_basis_sto_5g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_sto_basis_sto_5g

    module subroutine get_sto_basis_sto_6g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_sto_basis_sto_6g

  end interface

contains

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

end module basis_sto