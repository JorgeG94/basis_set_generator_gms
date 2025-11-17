module basis_aug_cc_dk
  use periodic_table
  use basis_set_data, only: basis_set_type
  use basis_set_constants, only: AUG_CC_PVDZ_DK, AUG_CC_PVTZ_DK, AUG_CC_PVQZ_DK, AUG_CC_PV5Z_DK
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: get_aug_cc_dk_basis

  interface

    module subroutine get_aug_cc_dk_basis_aug_cc_pvdz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_cc_dk_basis_aug_cc_pvdz_dk

    module subroutine get_aug_cc_dk_basis_aug_cc_pvtz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_cc_dk_basis_aug_cc_pvtz_dk

    module subroutine get_aug_cc_dk_basis_aug_cc_pvqz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_cc_dk_basis_aug_cc_pvqz_dk

    module subroutine get_aug_cc_dk_basis_aug_cc_pv5z_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_aug_cc_dk_basis_aug_cc_pv5z_dk

  end interface

contains

  subroutine get_aug_cc_dk_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      case (AUG_CC_PVDZ_DK)
        call get_aug_cc_dk_basis_aug_cc_pvdz_dk(basis_data, element_number, ilast)

      case (AUG_CC_PVTZ_DK)
        call get_aug_cc_dk_basis_aug_cc_pvtz_dk(basis_data, element_number, ilast)

      case (AUG_CC_PVQZ_DK)
        call get_aug_cc_dk_basis_aug_cc_pvqz_dk(basis_data, element_number, ilast)

      case (AUG_CC_PV5Z_DK)
        call get_aug_cc_dk_basis_aug_cc_pv5z_dk(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type not supported'
        ilast = -1
        return
    end select

  end subroutine get_aug_cc_dk_basis

end module basis_aug_cc_dk