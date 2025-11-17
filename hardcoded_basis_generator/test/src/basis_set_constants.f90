module basis_set_constants
  implicit none

  ! Basis set type constants
  ! Each family gets a range of 100 values

  ! CC_DK family (1-4)
  enum, bind(c)
    enumerator :: CC_DK_BASE = 0
    enumerator :: CC_PVDZ_DK
    enumerator :: CC_PVTZ_DK
    enumerator :: CC_PVQZ_DK
    enumerator :: CC_PV5Z_DK
  end enum

  ! AUG_CC_DK family (101-104)
  enum, bind(c)
    enumerator :: AUG_CC_DK_BASE = 100
    enumerator :: AUG_CC_PVDZ_DK
    enumerator :: AUG_CC_PVTZ_DK
    enumerator :: AUG_CC_PVQZ_DK
    enumerator :: AUG_CC_PV5Z_DK
  end enum

  ! CC family (201-205)
  enum, bind(c)
    enumerator :: CC_BASE = 200
    enumerator :: CC_PVDZ
    enumerator :: CC_PVTZ
    enumerator :: CC_PVQZ
    enumerator :: CC_PV5Z
    enumerator :: CC_PV6Z
  end enum

  ! AUG_CC family (301-305)
  enum, bind(c)
    enumerator :: AUG_CC_BASE = 300
    enumerator :: AUG_CC_PVDZ
    enumerator :: AUG_CC_PVTZ
    enumerator :: AUG_CC_PVQZ
    enumerator :: AUG_CC_PV5Z
    enumerator :: AUG_CC_PV6Z
  end enum

  ! STO family (401-404)
  enum, bind(c)
    enumerator :: STO_BASE = 400
    enumerator :: STO_3G
    enumerator :: STO_4G
    enumerator :: STO_5G
    enumerator :: STO_6G
  end enum

  ! POPLE_631 family (501-511)
  enum, bind(c)
    enumerator :: POPLE_631_BASE = 500
    enumerator :: B_6_31G
    enumerator :: B_6_31PLUSG
    enumerator :: B_6_31PLUSPLUSG
    enumerator :: B_6_31GSTAR
    enumerator :: B_6_31PLUSGSTAR
    enumerator :: B_6_31PLUSPLUSGSTAR
    enumerator :: B_6_31GSTARSTAR
    enumerator :: B_6_31PLUSGSTARSTAR
    enumerator :: B_6_31PLUSPLUSGSTARSTAR
    enumerator :: B_6_31G_2DF_P
    enumerator :: B_6_31G_3DF_3PD
  end enum

  ! POPLE_6311 family (601-611)
  enum, bind(c)
    enumerator :: POPLE_6311_BASE = 600
    enumerator :: B_6_311G
    enumerator :: B_6_311PLUSG
    enumerator :: B_6_311PLUSPLUSG
    enumerator :: B_6_311GSTAR
    enumerator :: B_6_311PLUSGSTAR
    enumerator :: B_6_311PLUSPLUSGSTAR
    enumerator :: B_6_311GSTARSTAR
    enumerator :: B_6_311PLUSGSTARSTAR
    enumerator :: B_6_311PLUSPLUSGSTARSTAR
    enumerator :: B_6_311G_2DF_2PD
    enumerator :: B_6_311PLUSPLUSG_3DF_3PD
  end enum

  ! PCSEG family (701-705)
  enum, bind(c)
    enumerator :: PCSEG_BASE = 700
    enumerator :: PCSEG_0
    enumerator :: PCSEG_1
    enumerator :: PCSEG_2
    enumerator :: PCSEG_3
    enumerator :: PCSEG_4
  end enum

  ! AUG_PCSEG family (801-805)
  enum, bind(c)
    enumerator :: AUG_PCSEG_BASE = 800
    enumerator :: AUG_PCSEG_0
    enumerator :: AUG_PCSEG_1
    enumerator :: AUG_PCSEG_2
    enumerator :: AUG_PCSEG_3
    enumerator :: AUG_PCSEG_4
  end enum

  ! DEF2 family (901-910)
  enum, bind(c)
    enumerator :: DEF2_BASE = 900
    enumerator :: DEF2_SVP
    enumerator :: DEF2_SVPD
    enumerator :: DEF2_TZVP
    enumerator :: DEF2_TZVPP
    enumerator :: DEF2_TZVPD
    enumerator :: DEF2_TZVPPD
    enumerator :: DEF2_QZVP
    enumerator :: DEF2_QZVPD
    enumerator :: DEF2_QZVPP
    enumerator :: DEF2_QZVPPD
  end enum

end module basis_set_constants