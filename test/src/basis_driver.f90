module basis_driver
  use periodic_table
  use basis_set_data, only: basis_set_type
  use basis_set_constants
  use iso_fortran_env, only: real64
  implicit none
  private
  public :: load_basis

  interface

    module subroutine get_basis_cc_pvdz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pvdz_dk

    module subroutine get_basis_cc_pvtz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pvtz_dk

    module subroutine get_basis_cc_pvqz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pvqz_dk

    module subroutine get_basis_cc_pv5z_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pv5z_dk

    module subroutine get_basis_aug_cc_pvdz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pvdz_dk

    module subroutine get_basis_aug_cc_pvtz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pvtz_dk

    module subroutine get_basis_aug_cc_pvqz_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pvqz_dk

    module subroutine get_basis_aug_cc_pv5z_dk(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pv5z_dk

    module subroutine get_basis_cc_pvdz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pvdz

    module subroutine get_basis_cc_pvtz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pvtz

    module subroutine get_basis_cc_pvqz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pvqz

    module subroutine get_basis_cc_pv5z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pv5z

    module subroutine get_basis_cc_pv6z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_cc_pv6z

    module subroutine get_basis_aug_cc_pvdz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pvdz

    module subroutine get_basis_aug_cc_pvtz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pvtz

    module subroutine get_basis_aug_cc_pvqz(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pvqz

    module subroutine get_basis_aug_cc_pv5z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pv5z

    module subroutine get_basis_aug_cc_pv6z(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_cc_pv6z

    module subroutine get_basis_sto_3g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_sto_3g

    module subroutine get_basis_sto_4g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_sto_4g

    module subroutine get_basis_sto_5g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_sto_5g

    module subroutine get_basis_sto_6g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_sto_6g

    module subroutine get_basis_b_6_31g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31g

    module subroutine get_basis_b_6_31plusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31plusg

    module subroutine get_basis_b_6_31plusplusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31plusplusg

    module subroutine get_basis_b_6_31gstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31gstar

    module subroutine get_basis_b_6_31plusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31plusgstar

    module subroutine get_basis_b_6_31plusplusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31plusplusgstar

    module subroutine get_basis_b_6_31gstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31gstarstar

    module subroutine get_basis_b_6_31plusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31plusgstarstar

    module subroutine get_basis_b_6_31plusplusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31plusplusgstarstar

    module subroutine get_basis_b_6_31g_2df_p(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31g_2df_p

    module subroutine get_basis_b_6_31g_3df_3pd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_31g_3df_3pd

    module subroutine get_basis_b_6_311g(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311g

    module subroutine get_basis_b_6_311plusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusg

    module subroutine get_basis_b_6_311plusplusg(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusplusg

    module subroutine get_basis_b_6_311gstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311gstar

    module subroutine get_basis_b_6_311plusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusgstar

    module subroutine get_basis_b_6_311plusplusgstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusplusgstar

    module subroutine get_basis_b_6_311gstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311gstarstar

    module subroutine get_basis_b_6_311plusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusgstarstar

    module subroutine get_basis_b_6_311plusplusgstarstar(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusplusgstarstar

    module subroutine get_basis_b_6_311g_2df_2pd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311g_2df_2pd

    module subroutine get_basis_b_6_311plusplusg_3df_3pd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_b_6_311plusplusg_3df_3pd

    module subroutine get_basis_pcseg_0(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_pcseg_0

    module subroutine get_basis_pcseg_1(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_pcseg_1

    module subroutine get_basis_pcseg_2(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_pcseg_2

    module subroutine get_basis_pcseg_3(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_pcseg_3

    module subroutine get_basis_pcseg_4(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_pcseg_4

    module subroutine get_basis_aug_pcseg_0(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_pcseg_0

    module subroutine get_basis_aug_pcseg_1(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_pcseg_1

    module subroutine get_basis_aug_pcseg_2(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_pcseg_2

    module subroutine get_basis_aug_pcseg_3(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_pcseg_3

    module subroutine get_basis_aug_pcseg_4(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_aug_pcseg_4

    module subroutine get_basis_def2_svp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_svp

    module subroutine get_basis_def2_svpd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_svpd

    module subroutine get_basis_def2_tzvp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_tzvp

    module subroutine get_basis_def2_tzvpp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_tzvpp

    module subroutine get_basis_def2_tzvpd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_tzvpd

    module subroutine get_basis_def2_tzvppd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_tzvppd

    module subroutine get_basis_def2_qzvp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_qzvp

    module subroutine get_basis_def2_qzvpd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_qzvpd

    module subroutine get_basis_def2_qzvpp(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_qzvpp

    module subroutine get_basis_def2_qzvppd(basis_data, element_number, ilast)
      type(basis_set_type), intent(out) :: basis_data
      integer, intent(in) :: element_number
      integer, intent(out) :: ilast
    end subroutine get_basis_def2_qzvppd

  end interface

contains

  subroutine load_basis(basis_data, element_number, basis_type, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number, basis_type
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk

    maswrk = .true.
    iw = 6
    ilast = 0

    select case (basis_type)

      ! CC_DK family
      case (CC_PVDZ_DK)
        call get_basis_cc_pvdz_dk(basis_data, element_number, ilast)
      case (CC_PVTZ_DK)
        call get_basis_cc_pvtz_dk(basis_data, element_number, ilast)
      case (CC_PVQZ_DK)
        call get_basis_cc_pvqz_dk(basis_data, element_number, ilast)
      case (CC_PV5Z_DK)
        call get_basis_cc_pv5z_dk(basis_data, element_number, ilast)

      ! AUG_CC_DK family
      case (AUG_CC_PVDZ_DK)
        call get_basis_aug_cc_pvdz_dk(basis_data, element_number, ilast)
      case (AUG_CC_PVTZ_DK)
        call get_basis_aug_cc_pvtz_dk(basis_data, element_number, ilast)
      case (AUG_CC_PVQZ_DK)
        call get_basis_aug_cc_pvqz_dk(basis_data, element_number, ilast)
      case (AUG_CC_PV5Z_DK)
        call get_basis_aug_cc_pv5z_dk(basis_data, element_number, ilast)

      ! CC family
      case (CC_PVDZ)
        call get_basis_cc_pvdz(basis_data, element_number, ilast)
      case (CC_PVTZ)
        call get_basis_cc_pvtz(basis_data, element_number, ilast)
      case (CC_PVQZ)
        call get_basis_cc_pvqz(basis_data, element_number, ilast)
      case (CC_PV5Z)
        call get_basis_cc_pv5z(basis_data, element_number, ilast)
      case (CC_PV6Z)
        call get_basis_cc_pv6z(basis_data, element_number, ilast)

      ! AUG_CC family
      case (AUG_CC_PVDZ)
        call get_basis_aug_cc_pvdz(basis_data, element_number, ilast)
      case (AUG_CC_PVTZ)
        call get_basis_aug_cc_pvtz(basis_data, element_number, ilast)
      case (AUG_CC_PVQZ)
        call get_basis_aug_cc_pvqz(basis_data, element_number, ilast)
      case (AUG_CC_PV5Z)
        call get_basis_aug_cc_pv5z(basis_data, element_number, ilast)
      case (AUG_CC_PV6Z)
        call get_basis_aug_cc_pv6z(basis_data, element_number, ilast)

      ! STO family
      case (STO_3G)
        call get_basis_sto_3g(basis_data, element_number, ilast)
      case (STO_4G)
        call get_basis_sto_4g(basis_data, element_number, ilast)
      case (STO_5G)
        call get_basis_sto_5g(basis_data, element_number, ilast)
      case (STO_6G)
        call get_basis_sto_6g(basis_data, element_number, ilast)

      ! POPLE_631 family
      case (B_6_31G)
        call get_basis_b_6_31g(basis_data, element_number, ilast)
      case (B_6_31PLUSG)
        call get_basis_b_6_31plusg(basis_data, element_number, ilast)
      case (B_6_31PLUSPLUSG)
        call get_basis_b_6_31plusplusg(basis_data, element_number, ilast)
      case (B_6_31GSTAR)
        call get_basis_b_6_31gstar(basis_data, element_number, ilast)
      case (B_6_31PLUSGSTAR)
        call get_basis_b_6_31plusgstar(basis_data, element_number, ilast)
      case (B_6_31PLUSPLUSGSTAR)
        call get_basis_b_6_31plusplusgstar(basis_data, element_number, ilast)
      case (B_6_31GSTARSTAR)
        call get_basis_b_6_31gstarstar(basis_data, element_number, ilast)
      case (B_6_31PLUSGSTARSTAR)
        call get_basis_b_6_31plusgstarstar(basis_data, element_number, ilast)
      case (B_6_31PLUSPLUSGSTARSTAR)
        call get_basis_b_6_31plusplusgstarstar(basis_data, element_number, ilast)
      case (B_6_31G_2DF_P)
        call get_basis_b_6_31g_2df_p(basis_data, element_number, ilast)
      case (B_6_31G_3DF_3PD)
        call get_basis_b_6_31g_3df_3pd(basis_data, element_number, ilast)

      ! POPLE_6311 family
      case (B_6_311G)
        call get_basis_b_6_311g(basis_data, element_number, ilast)
      case (B_6_311PLUSG)
        call get_basis_b_6_311plusg(basis_data, element_number, ilast)
      case (B_6_311PLUSPLUSG)
        call get_basis_b_6_311plusplusg(basis_data, element_number, ilast)
      case (B_6_311GSTAR)
        call get_basis_b_6_311gstar(basis_data, element_number, ilast)
      case (B_6_311PLUSGSTAR)
        call get_basis_b_6_311plusgstar(basis_data, element_number, ilast)
      case (B_6_311PLUSPLUSGSTAR)
        call get_basis_b_6_311plusplusgstar(basis_data, element_number, ilast)
      case (B_6_311GSTARSTAR)
        call get_basis_b_6_311gstarstar(basis_data, element_number, ilast)
      case (B_6_311PLUSGSTARSTAR)
        call get_basis_b_6_311plusgstarstar(basis_data, element_number, ilast)
      case (B_6_311PLUSPLUSGSTARSTAR)
        call get_basis_b_6_311plusplusgstarstar(basis_data, element_number, ilast)
      case (B_6_311G_2DF_2PD)
        call get_basis_b_6_311g_2df_2pd(basis_data, element_number, ilast)
      case (B_6_311PLUSPLUSG_3DF_3PD)
        call get_basis_b_6_311plusplusg_3df_3pd(basis_data, element_number, ilast)

      ! PCSEG family
      case (PCSEG_0)
        call get_basis_pcseg_0(basis_data, element_number, ilast)
      case (PCSEG_1)
        call get_basis_pcseg_1(basis_data, element_number, ilast)
      case (PCSEG_2)
        call get_basis_pcseg_2(basis_data, element_number, ilast)
      case (PCSEG_3)
        call get_basis_pcseg_3(basis_data, element_number, ilast)
      case (PCSEG_4)
        call get_basis_pcseg_4(basis_data, element_number, ilast)

      ! AUG_PCSEG family
      case (AUG_PCSEG_0)
        call get_basis_aug_pcseg_0(basis_data, element_number, ilast)
      case (AUG_PCSEG_1)
        call get_basis_aug_pcseg_1(basis_data, element_number, ilast)
      case (AUG_PCSEG_2)
        call get_basis_aug_pcseg_2(basis_data, element_number, ilast)
      case (AUG_PCSEG_3)
        call get_basis_aug_pcseg_3(basis_data, element_number, ilast)
      case (AUG_PCSEG_4)
        call get_basis_aug_pcseg_4(basis_data, element_number, ilast)

      ! DEF2 family
      case (DEF2_SVP)
        call get_basis_def2_svp(basis_data, element_number, ilast)
      case (DEF2_SVPD)
        call get_basis_def2_svpd(basis_data, element_number, ilast)
      case (DEF2_TZVP)
        call get_basis_def2_tzvp(basis_data, element_number, ilast)
      case (DEF2_TZVPP)
        call get_basis_def2_tzvpp(basis_data, element_number, ilast)
      case (DEF2_TZVPD)
        call get_basis_def2_tzvpd(basis_data, element_number, ilast)
      case (DEF2_TZVPPD)
        call get_basis_def2_tzvppd(basis_data, element_number, ilast)
      case (DEF2_QZVP)
        call get_basis_def2_qzvp(basis_data, element_number, ilast)
      case (DEF2_QZVPD)
        call get_basis_def2_qzvpd(basis_data, element_number, ilast)
      case (DEF2_QZVPP)
        call get_basis_def2_qzvpp(basis_data, element_number, ilast)
      case (DEF2_QZVPPD)
        call get_basis_def2_qzvppd(basis_data, element_number, ilast)

      case default
        if(maswrk) write(iw,*) 'ERROR: Basis type', basis_type, 'not supported'
        ilast = -1
        return
    end select

  end subroutine load_basis

end module basis_driver