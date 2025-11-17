module basis_set_lookup
  use basis_set_constants
  implicit none
  private
  public :: basis_name_to_type, get_basis_info

contains

  function basis_name_to_type(basis_name) result(basis_type)
    character(len=*), intent(in) :: basis_name
    integer :: basis_type
    character(len=:), allocatable :: name_upper

    name_upper = to_upper(trim(basis_name))

    select case (name_upper)
      ! CC_DK family
      case ('CC-PVDZ-DK')
        basis_type = CC_PVDZ_DK
      case ('CC-PVTZ-DK')
        basis_type = CC_PVTZ_DK
      case ('CC-PVQZ-DK')
        basis_type = CC_PVQZ_DK
      case ('CC-PV5Z-DK')
        basis_type = CC_PV5Z_DK

      ! AUG_CC_DK family
      case ('AUG-CC-PVDZ-DK')
        basis_type = AUG_CC_PVDZ_DK
      case ('AUG-CC-PVTZ-DK')
        basis_type = AUG_CC_PVTZ_DK
      case ('AUG-CC-PVQZ-DK')
        basis_type = AUG_CC_PVQZ_DK
      case ('AUG-CC-PV5Z-DK')
        basis_type = AUG_CC_PV5Z_DK

      ! CC family
      case ('CC-PVDZ')
        basis_type = CC_PVDZ
      case ('CC-PVTZ')
        basis_type = CC_PVTZ
      case ('CC-PVQZ')
        basis_type = CC_PVQZ
      case ('CC-PV5Z')
        basis_type = CC_PV5Z
      case ('CC-PV6Z')
        basis_type = CC_PV6Z

      ! AUG_CC family
      case ('AUG-CC-PVDZ')
        basis_type = AUG_CC_PVDZ
      case ('AUG-CC-PVTZ')
        basis_type = AUG_CC_PVTZ
      case ('AUG-CC-PVQZ')
        basis_type = AUG_CC_PVQZ
      case ('AUG-CC-PV5Z')
        basis_type = AUG_CC_PV5Z
      case ('AUG-CC-PV6Z')
        basis_type = AUG_CC_PV6Z

      ! STO family
      case ('STO-3G')
        basis_type = STO_3G
      case ('STO-4G')
        basis_type = STO_4G
      case ('STO-5G')
        basis_type = STO_5G
      case ('STO-6G')
        basis_type = STO_6G

      ! POPLE_631 family
      case ('6-31G')
        basis_type = B_6_31G
      case ('6-31+G')
        basis_type = B_6_31PLUSG
      case ('6-31++G')
        basis_type = B_6_31PLUSPLUSG
      case ('6-31G*')
        basis_type = B_6_31GSTAR
      case ('6-31+G*')
        basis_type = B_6_31PLUSGSTAR
      case ('6-31++G*')
        basis_type = B_6_31PLUSPLUSGSTAR
      case ('6-31G**')
        basis_type = B_6_31GSTARSTAR
      case ('6-31+G**')
        basis_type = B_6_31PLUSGSTARSTAR
      case ('6-31++G**')
        basis_type = B_6_31PLUSPLUSGSTARSTAR
      case ('6-31G(2DF,P)')
        basis_type = B_6_31G_2DF_P
      case ('6-31G(3DF,3PD)')
        basis_type = B_6_31G_3DF_3PD

      ! POPLE_6311 family
      case ('6-311G')
        basis_type = B_6_311G
      case ('6-311+G')
        basis_type = B_6_311PLUSG
      case ('6-311++G')
        basis_type = B_6_311PLUSPLUSG
      case ('6-311G*')
        basis_type = B_6_311GSTAR
      case ('6-311+G*')
        basis_type = B_6_311PLUSGSTAR
      case ('6-311++G*')
        basis_type = B_6_311PLUSPLUSGSTAR
      case ('6-311G**')
        basis_type = B_6_311GSTARSTAR
      case ('6-311+G**')
        basis_type = B_6_311PLUSGSTARSTAR
      case ('6-311++G**')
        basis_type = B_6_311PLUSPLUSGSTARSTAR
      case ('6-311G(2DF,2PD)')
        basis_type = B_6_311G_2DF_2PD
      case ('6-311++G(3DF,3PD)')
        basis_type = B_6_311PLUSPLUSG_3DF_3PD

      ! PCSEG family
      case ('PCSEG-0')
        basis_type = PCSEG_0
      case ('PCSEG-1')
        basis_type = PCSEG_1
      case ('PCSEG-2')
        basis_type = PCSEG_2
      case ('PCSEG-3')
        basis_type = PCSEG_3
      case ('PCSEG-4')
        basis_type = PCSEG_4

      ! AUG_PCSEG family
      case ('AUG-PCSEG-0')
        basis_type = AUG_PCSEG_0
      case ('AUG-PCSEG-1')
        basis_type = AUG_PCSEG_1
      case ('AUG-PCSEG-2')
        basis_type = AUG_PCSEG_2
      case ('AUG-PCSEG-3')
        basis_type = AUG_PCSEG_3
      case ('AUG-PCSEG-4')
        basis_type = AUG_PCSEG_4

      ! DEF2 family
      case ('DEF2-SVP')
        basis_type = DEF2_SVP
      case ('DEF2-SVPD')
        basis_type = DEF2_SVPD
      case ('DEF2-TZVP')
        basis_type = DEF2_TZVP
      case ('DEF2-TZVPP')
        basis_type = DEF2_TZVPP
      case ('DEF2-TZVPD')
        basis_type = DEF2_TZVPD
      case ('DEF2-TZVPPD')
        basis_type = DEF2_TZVPPD
      case ('DEF2-QZVP')
        basis_type = DEF2_QZVP
      case ('DEF2-QZVPD')
        basis_type = DEF2_QZVPD
      case ('DEF2-QZVPP')
        basis_type = DEF2_QZVPP
      case ('DEF2-QZVPPD')
        basis_type = DEF2_QZVPPD

      case default
        basis_type = -1  ! Invalid basis set
    end select

  end function basis_name_to_type

  subroutine get_basis_info(basis_name, family, basis_type, ierr)
    character(len=*), intent(in) :: basis_name
    character(len=*), intent(out) :: family
    integer, intent(out) :: basis_type
    integer, intent(out) :: ierr
    character(len=:), allocatable :: name_upper

    ierr = 0
    name_upper = to_upper(trim(basis_name))

    select case (name_upper)
      ! CC_DK family
      case ('CC-PVDZ-DK')
        family = 'cc_dk'
        basis_type = CC_PVDZ_DK
      case ('CC-PVTZ-DK')
        family = 'cc_dk'
        basis_type = CC_PVTZ_DK
      case ('CC-PVQZ-DK')
        family = 'cc_dk'
        basis_type = CC_PVQZ_DK
      case ('CC-PV5Z-DK')
        family = 'cc_dk'
        basis_type = CC_PV5Z_DK

      ! AUG_CC_DK family
      case ('AUG-CC-PVDZ-DK')
        family = 'aug_cc_dk'
        basis_type = AUG_CC_PVDZ_DK
      case ('AUG-CC-PVTZ-DK')
        family = 'aug_cc_dk'
        basis_type = AUG_CC_PVTZ_DK
      case ('AUG-CC-PVQZ-DK')
        family = 'aug_cc_dk'
        basis_type = AUG_CC_PVQZ_DK
      case ('AUG-CC-PV5Z-DK')
        family = 'aug_cc_dk'
        basis_type = AUG_CC_PV5Z_DK

      ! CC family
      case ('CC-PVDZ')
        family = 'cc'
        basis_type = CC_PVDZ
      case ('CC-PVTZ')
        family = 'cc'
        basis_type = CC_PVTZ
      case ('CC-PVQZ')
        family = 'cc'
        basis_type = CC_PVQZ
      case ('CC-PV5Z')
        family = 'cc'
        basis_type = CC_PV5Z
      case ('CC-PV6Z')
        family = 'cc'
        basis_type = CC_PV6Z

      ! AUG_CC family
      case ('AUG-CC-PVDZ')
        family = 'aug_cc'
        basis_type = AUG_CC_PVDZ
      case ('AUG-CC-PVTZ')
        family = 'aug_cc'
        basis_type = AUG_CC_PVTZ
      case ('AUG-CC-PVQZ')
        family = 'aug_cc'
        basis_type = AUG_CC_PVQZ
      case ('AUG-CC-PV5Z')
        family = 'aug_cc'
        basis_type = AUG_CC_PV5Z
      case ('AUG-CC-PV6Z')
        family = 'aug_cc'
        basis_type = AUG_CC_PV6Z

      ! STO family
      case ('STO-3G')
        family = 'sto'
        basis_type = STO_3G
      case ('STO-4G')
        family = 'sto'
        basis_type = STO_4G
      case ('STO-5G')
        family = 'sto'
        basis_type = STO_5G
      case ('STO-6G')
        family = 'sto'
        basis_type = STO_6G

      ! POPLE_631 family
      case ('6-31G')
        family = 'pople_631'
        basis_type = B_6_31G
      case ('6-31+G')
        family = 'pople_631'
        basis_type = B_6_31PLUSG
      case ('6-31++G')
        family = 'pople_631'
        basis_type = B_6_31PLUSPLUSG
      case ('6-31G*')
        family = 'pople_631'
        basis_type = B_6_31GSTAR
      case ('6-31+G*')
        family = 'pople_631'
        basis_type = B_6_31PLUSGSTAR
      case ('6-31++G*')
        family = 'pople_631'
        basis_type = B_6_31PLUSPLUSGSTAR
      case ('6-31G**')
        family = 'pople_631'
        basis_type = B_6_31GSTARSTAR
      case ('6-31+G**')
        family = 'pople_631'
        basis_type = B_6_31PLUSGSTARSTAR
      case ('6-31++G**')
        family = 'pople_631'
        basis_type = B_6_31PLUSPLUSGSTARSTAR
      case ('6-31G(2DF,P)')
        family = 'pople_631'
        basis_type = B_6_31G_2DF_P
      case ('6-31G(3DF,3PD)')
        family = 'pople_631'
        basis_type = B_6_31G_3DF_3PD

      ! POPLE_6311 family
      case ('6-311G')
        family = 'pople_6311'
        basis_type = B_6_311G
      case ('6-311+G')
        family = 'pople_6311'
        basis_type = B_6_311PLUSG
      case ('6-311++G')
        family = 'pople_6311'
        basis_type = B_6_311PLUSPLUSG
      case ('6-311G*')
        family = 'pople_6311'
        basis_type = B_6_311GSTAR
      case ('6-311+G*')
        family = 'pople_6311'
        basis_type = B_6_311PLUSGSTAR
      case ('6-311++G*')
        family = 'pople_6311'
        basis_type = B_6_311PLUSPLUSGSTAR
      case ('6-311G**')
        family = 'pople_6311'
        basis_type = B_6_311GSTARSTAR
      case ('6-311+G**')
        family = 'pople_6311'
        basis_type = B_6_311PLUSGSTARSTAR
      case ('6-311++G**')
        family = 'pople_6311'
        basis_type = B_6_311PLUSPLUSGSTARSTAR
      case ('6-311G(2DF,2PD)')
        family = 'pople_6311'
        basis_type = B_6_311G_2DF_2PD
      case ('6-311++G(3DF,3PD)')
        family = 'pople_6311'
        basis_type = B_6_311PLUSPLUSG_3DF_3PD

      ! PCSEG family
      case ('PCSEG-0')
        family = 'pcseg'
        basis_type = PCSEG_0
      case ('PCSEG-1')
        family = 'pcseg'
        basis_type = PCSEG_1
      case ('PCSEG-2')
        family = 'pcseg'
        basis_type = PCSEG_2
      case ('PCSEG-3')
        family = 'pcseg'
        basis_type = PCSEG_3
      case ('PCSEG-4')
        family = 'pcseg'
        basis_type = PCSEG_4

      ! AUG_PCSEG family
      case ('AUG-PCSEG-0')
        family = 'aug_pcseg'
        basis_type = AUG_PCSEG_0
      case ('AUG-PCSEG-1')
        family = 'aug_pcseg'
        basis_type = AUG_PCSEG_1
      case ('AUG-PCSEG-2')
        family = 'aug_pcseg'
        basis_type = AUG_PCSEG_2
      case ('AUG-PCSEG-3')
        family = 'aug_pcseg'
        basis_type = AUG_PCSEG_3
      case ('AUG-PCSEG-4')
        family = 'aug_pcseg'
        basis_type = AUG_PCSEG_4

      ! DEF2 family
      case ('DEF2-SVP')
        family = 'def2'
        basis_type = DEF2_SVP
      case ('DEF2-SVPD')
        family = 'def2'
        basis_type = DEF2_SVPD
      case ('DEF2-TZVP')
        family = 'def2'
        basis_type = DEF2_TZVP
      case ('DEF2-TZVPP')
        family = 'def2'
        basis_type = DEF2_TZVPP
      case ('DEF2-TZVPD')
        family = 'def2'
        basis_type = DEF2_TZVPD
      case ('DEF2-TZVPPD')
        family = 'def2'
        basis_type = DEF2_TZVPPD
      case ('DEF2-QZVP')
        family = 'def2'
        basis_type = DEF2_QZVP
      case ('DEF2-QZVPD')
        family = 'def2'
        basis_type = DEF2_QZVPD
      case ('DEF2-QZVPP')
        family = 'def2'
        basis_type = DEF2_QZVPP
      case ('DEF2-QZVPPD')
        family = 'def2'
        basis_type = DEF2_QZVPPD

      case default
        family = 'UNKNOWN'
        basis_type = -1
        ierr = 1
    end select

  end subroutine get_basis_info

  function to_upper(str) result(upper_str)
    character(len=*), intent(in) :: str
    character(len=len(str)) :: upper_str
    integer :: i, ic

    upper_str = str
    do i = 1, len(str)
      ic = ichar(str(i:i))
      if (ic >= ichar('a') .and. ic <= ichar('z')) then
        upper_str(i:i) = char(ic - 32)
      end if
    end do

  end function to_upper

end module basis_set_lookup
