submodule (basis_driver) basis_driver_b_6_311g_2df_2pd
  implicit none

contains

  module subroutine get_basis_b_6_311g_2df_2pd(basis_data, element_number, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk
    maswrk = .true.
    iw = 6
    ilast = 0

    select case (element_number)

      case(HYDROGEN)
        basis_data%exponents(1) = 0.3386500D+02
        basis_data%s_coef(1) = 0.2549380D-01
        basis_data%exponents(2) = 0.5094790D+01
        basis_data%s_coef(2) = 0.1903730D+00
        basis_data%exponents(3) = 0.1158790D+01
        basis_data%s_coef(3) = 0.8521610D+00
        basis_data%exponents(4) = 0.3258400D+00
        basis_data%s_coef(4) = 0.1000000D+01
        basis_data%exponents(5) = 0.1027410D+00
        basis_data%s_coef(5) = 0.1000000D+01
        basis_data%exponents(6) = 0.1500000D+01
        basis_data%p_coef(6) = 0.1000000D+01
        basis_data%exponents(7) = 0.3750000D+00
        basis_data%p_coef(7) = 0.1000000D+01
        basis_data%exponents(8) = 0.1000000D+01
        basis_data%d_coef(8) = 0.1000000D+01
        ilast = 8

      case(HELIUM)
        basis_data%exponents(1) = 0.9812430D+02
        basis_data%s_coef(1) = 0.2874520D-01
        basis_data%exponents(2) = 0.1476890D+02
        basis_data%s_coef(2) = 0.2080610D+00
        basis_data%exponents(3) = 0.3318830D+01
        basis_data%s_coef(3) = 0.8376350D+00
        basis_data%exponents(4) = 0.8740470D+00
        basis_data%s_coef(4) = 0.1000000D+01
        basis_data%exponents(5) = 0.2445640D+00
        basis_data%s_coef(5) = 0.1000000D+01
        basis_data%exponents(6) = 0.1500000D+01
        basis_data%p_coef(6) = 0.1000000D+01
        basis_data%exponents(7) = 0.3750000D+00
        basis_data%p_coef(7) = 0.1000000D+01
        basis_data%exponents(8) = 0.2000000D+01
        basis_data%d_coef(8) = 0.1000000D+01
        ilast = 8

      case(LITHIUM)
        basis_data%exponents(1) = 0.9004600D+03
        basis_data%s_coef(1) = 0.2287040D-02
        basis_data%exponents(2) = 0.1344330D+03
        basis_data%s_coef(2) = 0.1763500D-01
        basis_data%exponents(3) = 0.3043650D+02
        basis_data%s_coef(3) = 0.8734340D-01
        basis_data%exponents(4) = 0.8626390D+01
        basis_data%s_coef(4) = 0.2809770D+00
        basis_data%exponents(5) = 0.2483320D+01
        basis_data%s_coef(5) = 0.6587410D+00
        basis_data%exponents(6) = 0.3031790D+00
        basis_data%s_coef(6) = 0.1187120D+00
        basis_data%exponents(7) = 0.4868900D+01
        basis_data%s_coef(7) = 0.9332930D-01
        basis_data%exponents(8) = 0.8569240D+00
        basis_data%s_coef(8) = 0.9430450D+00
        basis_data%exponents(9) = 0.2432270D+00
        basis_data%s_coef(9) = -0.2798270D-02
        basis_data%exponents(10) = 0.4868900D+01
        basis_data%s_coef(10) = 0.3276610D-01
        basis_data%exponents(11) = 0.8569240D+00
        basis_data%s_coef(11) = 0.1597920D+00
        basis_data%exponents(12) = 0.2432270D+00
        basis_data%s_coef(12) = 0.8856670D+00
        basis_data%exponents(13) = 0.6350700D-01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.6350700D-01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.2436830D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.2436830D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.4000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.1000000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.1500000D+00
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(BERYLLIUM)
        basis_data%exponents(1) = 0.1682800D+04
        basis_data%s_coef(1) = 0.2285740D-02
        basis_data%exponents(2) = 0.2517150D+03
        basis_data%s_coef(2) = 0.1759380D-01
        basis_data%exponents(3) = 0.5741160D+02
        basis_data%s_coef(3) = 0.8633150D-01
        basis_data%exponents(4) = 0.1651710D+02
        basis_data%s_coef(4) = 0.2818350D+00
        basis_data%exponents(5) = 0.4853640D+01
        basis_data%s_coef(5) = 0.6405940D+00
        basis_data%exponents(6) = 0.6268630D+00
        basis_data%s_coef(6) = 0.1444670D+00
        basis_data%exponents(7) = 0.8309380D+01
        basis_data%s_coef(7) = 0.1086210D+00
        basis_data%exponents(8) = 0.1740750D+01
        basis_data%s_coef(8) = 0.9273010D+00
        basis_data%exponents(9) = 0.4858160D+00
        basis_data%s_coef(9) = -0.2971690D-02
        basis_data%exponents(10) = 0.8309380D+01
        basis_data%s_coef(10) = 0.3613440D-01
        basis_data%exponents(11) = 0.1740750D+01
        basis_data%s_coef(11) = 0.2169580D+00
        basis_data%exponents(12) = 0.4858160D+00
        basis_data%s_coef(12) = 0.8418390D+00
        basis_data%exponents(13) = 0.1636130D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1636130D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.5672850D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.5672850D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.5100000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.1275000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.2600000D+00
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(BORON)
        basis_data%exponents(1) = 0.2858890D+04
        basis_data%s_coef(1) = 0.2153750D-02
        basis_data%exponents(2) = 0.4281400D+03
        basis_data%s_coef(2) = 0.1658230D-01
        basis_data%exponents(3) = 0.9752820D+02
        basis_data%s_coef(3) = 0.8218700D-01
        basis_data%exponents(4) = 0.2796930D+02
        basis_data%s_coef(4) = 0.2766180D+00
        basis_data%exponents(5) = 0.8215770D+01
        basis_data%s_coef(5) = 0.6293160D+00
        basis_data%exponents(6) = 0.1112780D+01
        basis_data%s_coef(6) = 0.1737700D+00
        basis_data%exponents(7) = 0.1324150D+02
        basis_data%s_coef(7) = 0.1174430D+00
        basis_data%exponents(8) = 0.3001660D+01
        basis_data%s_coef(8) = 0.9180020D+00
        basis_data%exponents(9) = 0.9128560D+00
        basis_data%s_coef(9) = -0.2651050D-02
        basis_data%exponents(10) = 0.1324150D+02
        basis_data%s_coef(10) = 0.4181000D-01
        basis_data%exponents(11) = 0.3001660D+01
        basis_data%s_coef(11) = 0.2365750D+00
        basis_data%exponents(12) = 0.9128560D+00
        basis_data%s_coef(12) = 0.8162140D+00
        basis_data%exponents(13) = 0.3154540D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.3154540D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.9885630D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.9885630D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.8020000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.2005000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.5000000D+00
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(CARBON)
        basis_data%exponents(1) = 0.4563240D+04
        basis_data%s_coef(1) = 0.1966650D-02
        basis_data%exponents(2) = 0.6820240D+03
        basis_data%s_coef(2) = 0.1523060D-01
        basis_data%exponents(3) = 0.1549730D+03
        basis_data%s_coef(3) = 0.7612690D-01
        basis_data%exponents(4) = 0.4445530D+02
        basis_data%s_coef(4) = 0.2608010D+00
        basis_data%exponents(5) = 0.1302900D+02
        basis_data%s_coef(5) = 0.6164620D+00
        basis_data%exponents(6) = 0.1827730D+01
        basis_data%s_coef(6) = 0.2210060D+00
        basis_data%exponents(7) = 0.2096420D+02
        basis_data%s_coef(7) = 0.1146600D+00
        basis_data%exponents(8) = 0.4803310D+01
        basis_data%s_coef(8) = 0.9199990D+00
        basis_data%exponents(9) = 0.1459330D+01
        basis_data%s_coef(9) = -0.3030680D-02
        basis_data%exponents(10) = 0.2096420D+02
        basis_data%s_coef(10) = 0.4024870D-01
        basis_data%exponents(11) = 0.4803310D+01
        basis_data%s_coef(11) = 0.2375940D+00
        basis_data%exponents(12) = 0.1459330D+01
        basis_data%s_coef(12) = 0.8158540D+00
        basis_data%exponents(13) = 0.4834560D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.4834560D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.1455850D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.1455850D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.1252000D+01
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.3130000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.8000000D+00
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(NITROGEN)
        basis_data%exponents(1) = 0.6293480D+04
        basis_data%s_coef(1) = 0.1969790D-02
        basis_data%exponents(2) = 0.9490440D+03
        basis_data%s_coef(2) = 0.1496130D-01
        basis_data%exponents(3) = 0.2187760D+03
        basis_data%s_coef(3) = 0.7350060D-01
        basis_data%exponents(4) = 0.6369160D+02
        basis_data%s_coef(4) = 0.2489370D+00
        basis_data%exponents(5) = 0.1882820D+02
        basis_data%s_coef(5) = 0.6024600D+00
        basis_data%exponents(6) = 0.2720230D+01
        basis_data%s_coef(6) = 0.2562020D+00
        basis_data%exponents(7) = 0.3063310D+02
        basis_data%s_coef(7) = 0.1119060D+00
        basis_data%exponents(8) = 0.7026140D+01
        basis_data%s_coef(8) = 0.9216660D+00
        basis_data%exponents(9) = 0.2112050D+01
        basis_data%s_coef(9) = -0.2569190D-02
        basis_data%exponents(10) = 0.3063310D+02
        basis_data%s_coef(10) = 0.3831190D-01
        basis_data%exponents(11) = 0.7026140D+01
        basis_data%s_coef(11) = 0.2374030D+00
        basis_data%exponents(12) = 0.2112050D+01
        basis_data%s_coef(12) = 0.8175920D+00
        basis_data%exponents(13) = 0.6840090D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.6840090D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.2008780D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.2008780D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.1826000D+01
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.4565000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.1000000D+01
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(OXYGEN)
        basis_data%exponents(1) = 0.8588500D+04
        basis_data%s_coef(1) = 0.1895150D-02
        basis_data%exponents(2) = 0.1297230D+04
        basis_data%s_coef(2) = 0.1438590D-01
        basis_data%exponents(3) = 0.2992960D+03
        basis_data%s_coef(3) = 0.7073200D-01
        basis_data%exponents(4) = 0.8737710D+02
        basis_data%s_coef(4) = 0.2400010D+00
        basis_data%exponents(5) = 0.2567890D+02
        basis_data%s_coef(5) = 0.5947970D+00
        basis_data%exponents(6) = 0.3740040D+01
        basis_data%s_coef(6) = 0.2808020D+00
        basis_data%exponents(7) = 0.4211750D+02
        basis_data%s_coef(7) = 0.1138890D+00
        basis_data%exponents(8) = 0.9628370D+01
        basis_data%s_coef(8) = 0.9208110D+00
        basis_data%exponents(9) = 0.2853320D+01
        basis_data%s_coef(9) = -0.3274470D-02
        basis_data%exponents(10) = 0.4211750D+02
        basis_data%s_coef(10) = 0.3651140D-01
        basis_data%exponents(11) = 0.9628370D+01
        basis_data%s_coef(11) = 0.2371530D+00
        basis_data%exponents(12) = 0.2853320D+01
        basis_data%s_coef(12) = 0.8197020D+00
        basis_data%exponents(13) = 0.9056610D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.9056610D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.2556110D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.2556110D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.2584000D+01
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.6460000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.1400000D+01
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(FLUORINE)
        basis_data%exponents(1) = 0.1142710D+05
        basis_data%s_coef(1) = 0.1800930D-02
        basis_data%exponents(2) = 0.1722350D+04
        basis_data%s_coef(2) = 0.1374190D-01
        basis_data%exponents(3) = 0.3957460D+03
        basis_data%s_coef(3) = 0.6813340D-01
        basis_data%exponents(4) = 0.1151390D+03
        basis_data%s_coef(4) = 0.2333250D+00
        basis_data%exponents(5) = 0.3360260D+02
        basis_data%s_coef(5) = 0.5890860D+00
        basis_data%exponents(6) = 0.4919010D+01
        basis_data%s_coef(6) = 0.2995050D+00
        basis_data%exponents(7) = 0.5544410D+02
        basis_data%s_coef(7) = 0.1145360D+00
        basis_data%exponents(8) = 0.1263230D+02
        basis_data%s_coef(8) = 0.9205120D+00
        basis_data%exponents(9) = 0.3717560D+01
        basis_data%s_coef(9) = -0.3378040D-02
        basis_data%exponents(10) = 0.5544410D+02
        basis_data%s_coef(10) = 0.3546090D-01
        basis_data%exponents(11) = 0.1263230D+02
        basis_data%s_coef(11) = 0.2374510D+00
        basis_data%exponents(12) = 0.3717560D+01
        basis_data%s_coef(12) = 0.8204580D+00
        basis_data%exponents(13) = 0.1165450D+01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1165450D+01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.3218920D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.3218920D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.3500000D+01
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.8750000D+00
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.1850000D+01
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(NEON)
        basis_data%exponents(1) = 0.1399570D+05
        basis_data%s_coef(1) = 0.1832760D-02
        basis_data%exponents(2) = 0.2117100D+04
        basis_data%s_coef(2) = 0.1388270D-01
        basis_data%exponents(3) = 0.4904250D+03
        basis_data%s_coef(3) = 0.6806870D-01
        basis_data%exponents(4) = 0.1438330D+03
        basis_data%s_coef(4) = 0.2313280D+00
        basis_data%exponents(5) = 0.4192650D+02
        basis_data%s_coef(5) = 0.5858900D+00
        basis_data%exponents(6) = 0.6156840D+01
        basis_data%s_coef(6) = 0.3058830D+00
        basis_data%exponents(7) = 0.6912110D+02
        basis_data%s_coef(7) = 0.1191490D+00
        basis_data%exponents(8) = 0.1583500D+02
        basis_data%s_coef(8) = 0.9173750D+00
        basis_data%exponents(9) = 0.4673260D+01
        basis_data%s_coef(9) = -0.4058390D-02
        basis_data%exponents(10) = 0.6912110D+02
        basis_data%s_coef(10) = 0.3565740D-01
        basis_data%exponents(11) = 0.1583500D+02
        basis_data%s_coef(11) = 0.2394770D+00
        basis_data%exponents(12) = 0.4673260D+01
        basis_data%s_coef(12) = 0.8184610D+00
        basis_data%exponents(13) = 0.1457560D+01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1457560D+01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.3970570D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.3970570D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.4608000D+01
        basis_data%d_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.1152000D+01
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.2500000D+01
        basis_data%f_coef(19) = 0.1000000D+01
        ilast = 19

      case(SODIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SODIUM'
        ilast = -1
        return

      case(MAGNESIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element MAGNESIUM'
        ilast = -1
        return

      case(ALUMINUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ALUMINUM'
        ilast = -1
        return

      case(SILICON)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SILICON'
        ilast = -1
        return

      case(PHOSPHORUS)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element PHOSPHORUS'
        ilast = -1
        return

      case(SULFUR)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SULFUR'
        ilast = -1
        return

      case(CHLORINE)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element CHLORINE'
        ilast = -1
        return

      case(ARGON)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ARGON'
        ilast = -1
        return

      case(POTASSIUM)
        basis_data%exponents(1) = 0.1825940D+06
        basis_data%s_coef(1) = 0.2277470D-03
        basis_data%exponents(2) = 0.2736900D+05
        basis_data%s_coef(2) = 0.1766400D-02
        basis_data%exponents(3) = 0.6229170D+04
        basis_data%s_coef(3) = 0.9194970D-02
        basis_data%exponents(4) = 0.1764580D+04
        basis_data%s_coef(4) = 0.3745510D-01
        basis_data%exponents(5) = 0.5770510D+03
        basis_data%s_coef(5) = 0.1220450D+00
        basis_data%exponents(6) = 0.2102490D+03
        basis_data%s_coef(6) = 0.2989900D+00
        basis_data%exponents(7) = 0.8261780D+02
        basis_data%s_coef(7) = 0.4051470D+00
        basis_data%exponents(8) = 0.3323320D+02
        basis_data%s_coef(8) = 0.2925320D+00
        basis_data%exponents(9) = 0.8106490D+01
        basis_data%s_coef(9) = 0.1000000D+01
        basis_data%exponents(10) = 0.3334030D+01
        basis_data%s_coef(10) = 0.1000000D+01
        basis_data%exponents(11) = 0.8455440D+00
        basis_data%s_coef(11) = 0.1000000D+01
        basis_data%exponents(12) = 0.3282160D+00
        basis_data%s_coef(12) = 0.1000000D+01
        basis_data%exponents(13) = 0.3640350D-01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1764630D-01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.8910540D+03
        basis_data%p_coef(15) = 0.2184290D-02
        basis_data%exponents(16) = 0.2110160D+03
        basis_data%p_coef(16) = 0.1758910D-01
        basis_data%exponents(17) = 0.6767140D+02
        basis_data%p_coef(17) = 0.8177750D-01
        basis_data%exponents(18) = 0.2527150D+02
        basis_data%p_coef(18) = 0.2456560D+00
        basis_data%exponents(19) = 0.1013900D+02
        basis_data%p_coef(19) = 0.4339840D+00
        basis_data%exponents(20) = 0.4201860D+01
        basis_data%p_coef(20) = 0.3623770D+00
        basis_data%exponents(21) = 0.1625070D+01
        basis_data%p_coef(21) = 0.1000000D+01
        basis_data%exponents(22) = 0.6437700D+00
        basis_data%p_coef(22) = 0.1000000D+01
        basis_data%exponents(23) = 0.2461300D+00
        basis_data%p_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.4544000D-01
        basis_data%p_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.1616000D-01
        basis_data%p_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1337000D+02
        basis_data%d_coef(26) = 0.3160160D-01
        basis_data%exponents(27) = 0.3421000D+01
        basis_data%d_coef(27) = 0.1568790D+00
        basis_data%exponents(28) = 0.1063000D+01
        basis_data%d_coef(28) = 0.3905820D+00
        basis_data%exponents(29) = 0.4580000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        basis_data%exponents(30) = 0.1145000D+00
        basis_data%d_coef(30) = 0.1000000D+01
        basis_data%exponents(31) = 0.1110000D+01
        basis_data%f_coef(31) = 0.1000000D+01
        ilast = 31

      case(CALCIUM)
        basis_data%exponents(1) = 0.2026990D+06
        basis_data%s_coef(1) = 0.2229640D-03
        basis_data%exponents(2) = 0.3038250D+05
        basis_data%s_coef(2) = 0.1729320D-02
        basis_data%exponents(3) = 0.6915080D+04
        basis_data%s_coef(3) = 0.9002260D-02
        basis_data%exponents(4) = 0.1959020D+04
        basis_data%s_coef(4) = 0.3666990D-01
        basis_data%exponents(5) = 0.6409360D+03
        basis_data%s_coef(5) = 0.1194100D+00
        basis_data%exponents(6) = 0.2339770D+03
        basis_data%s_coef(6) = 0.2918250D+00
        basis_data%exponents(7) = 0.9228920D+02
        basis_data%s_coef(7) = 0.4044150D+00
        basis_data%exponents(8) = 0.3725450D+02
        basis_data%s_coef(8) = 0.2963130D+00
        basis_data%exponents(9) = 0.9131980D+01
        basis_data%s_coef(9) = 0.1000000D+01
        basis_data%exponents(10) = 0.3817790D+01
        basis_data%s_coef(10) = 0.1000000D+01
        basis_data%exponents(11) = 0.1049350D+01
        basis_data%s_coef(11) = 0.1000000D+01
        basis_data%exponents(12) = 0.4286600D+00
        basis_data%s_coef(12) = 0.1000000D+01
        basis_data%exponents(13) = 0.6282260D-01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.2601620D-01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.1019760D+04
        basis_data%p_coef(15) = 0.2059860D-02
        basis_data%exponents(16) = 0.2415960D+03
        basis_data%p_coef(16) = 0.1665010D-01
        basis_data%exponents(17) = 0.7763700D+02
        basis_data%p_coef(17) = 0.7776460D-01
        basis_data%exponents(18) = 0.2911540D+02
        basis_data%p_coef(18) = 0.2418060D+00
        basis_data%exponents(19) = 0.1176260D+02
        basis_data%p_coef(19) = 0.4325780D+00
        basis_data%exponents(20) = 0.4922890D+01
        basis_data%p_coef(20) = 0.3673250D+00
        basis_data%exponents(21) = 0.1906450D+01
        basis_data%p_coef(21) = 0.1000000D+01
        basis_data%exponents(22) = 0.7369000D+00
        basis_data%p_coef(22) = 0.1000000D+01
        basis_data%exponents(23) = 0.2764200D+00
        basis_data%p_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.6027000D-01
        basis_data%p_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.1791000D-01
        basis_data%p_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1508000D+02
        basis_data%d_coef(26) = 0.3689470D-01
        basis_data%exponents(27) = 0.3926000D+01
        basis_data%d_coef(27) = 0.1778200D+00
        basis_data%exponents(28) = 0.1233000D+01
        basis_data%d_coef(28) = 0.4255130D+00
        basis_data%exponents(29) = 0.5200000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        basis_data%exponents(30) = 0.1300000D+00
        basis_data%d_coef(30) = 0.1000000D+01
        basis_data%exponents(31) = 0.1330000D+01
        basis_data%f_coef(31) = 0.1000000D+01
        ilast = 31

      case(SCANDIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SCANDIUM'
        ilast = -1
        return

      case(TITANIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TITANIUM'
        ilast = -1
        return

      case(VANADIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element VANADIUM'
        ilast = -1
        return

      case(CHROMIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element CHROMIUM'
        ilast = -1
        return

      case(MANGANESE)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element MANGANESE'
        ilast = -1
        return

      case(IRON)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element IRON'
        ilast = -1
        return

      case(COBALT)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element COBALT'
        ilast = -1
        return

      case(NICKEL)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element NICKEL'
        ilast = -1
        return

      case(COPPER)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element COPPER'
        ilast = -1
        return

      case(ZINC)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ZINC'
        ilast = -1
        return

      case(GALLIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element GALLIUM'
        ilast = -1
        return

      case(GERMANIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element GERMANIUM'
        ilast = -1
        return

      case(ARSENIC)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ARSENIC'
        ilast = -1
        return

      case(SELENIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SELENIUM'
        ilast = -1
        return

      case(BROMINE)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element BROMINE'
        ilast = -1
        return

      case(KRYPTON)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element KRYPTON'
        ilast = -1
        return

      case(RUBIDIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element RUBIDIUM'
        ilast = -1
        return

      case(STRONTIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element STRONTIUM'
        ilast = -1
        return

      case(YTTRIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element YTTRIUM'
        ilast = -1
        return

      case(ZIRCONIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ZIRCONIUM'
        ilast = -1
        return

      case(NIOBIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element NIOBIUM'
        ilast = -1
        return

      case(MOLYBDENUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element MOLYBDENUM'
        ilast = -1
        return

      case(TECHNETIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TECHNETIUM'
        ilast = -1
        return

      case(RUTHENIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element RUTHENIUM'
        ilast = -1
        return

      case(RHODIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element RHODIUM'
        ilast = -1
        return

      case(PALLADIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element PALLADIUM'
        ilast = -1
        return

      case(SILVER)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SILVER'
        ilast = -1
        return

      case(CADMIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element CADMIUM'
        ilast = -1
        return

      case(INDIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element INDIUM'
        ilast = -1
        return

      case(TIN)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TIN'
        ilast = -1
        return

      case(ANTIMONY)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ANTIMONY'
        ilast = -1
        return

      case(TELLURIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TELLURIUM'
        ilast = -1
        return

      case(IODINE)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element IODINE'
        ilast = -1
        return

      case(XENON)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element XENON'
        ilast = -1
        return

      case(CESIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element CESIUM'
        ilast = -1
        return

      case(BARIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element BARIUM'
        ilast = -1
        return

      case(LANTHANUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element LANTHANUM'
        ilast = -1
        return

      case(CERIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element CERIUM'
        ilast = -1
        return

      case(PRASEODYMIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element PRASEODYMIUM'
        ilast = -1
        return

      case(NEODYMIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element NEODYMIUM'
        ilast = -1
        return

      case(PROMETHIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element PROMETHIUM'
        ilast = -1
        return

      case(SAMARIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element SAMARIUM'
        ilast = -1
        return

      case(EUROPIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element EUROPIUM'
        ilast = -1
        return

      case(GADOLINIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element GADOLINIUM'
        ilast = -1
        return

      case(TERBIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TERBIUM'
        ilast = -1
        return

      case(DYSPROSIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element DYSPROSIUM'
        ilast = -1
        return

      case(HOLMIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element HOLMIUM'
        ilast = -1
        return

      case(ERBIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ERBIUM'
        ilast = -1
        return

      case(THULIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element THULIUM'
        ilast = -1
        return

      case(YTTERBIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element YTTERBIUM'
        ilast = -1
        return

      case(LUTETIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element LUTETIUM'
        ilast = -1
        return

      case(HAFNIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element HAFNIUM'
        ilast = -1
        return

      case(TANTALUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TANTALUM'
        ilast = -1
        return

      case(TUNGSTEN)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element TUNGSTEN'
        ilast = -1
        return

      case(RHENIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element RHENIUM'
        ilast = -1
        return

      case(OSMIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element OSMIUM'
        ilast = -1
        return

      case(IRIDIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element IRIDIUM'
        ilast = -1
        return

      case(PLATINUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element PLATINUM'
        ilast = -1
        return

      case(GOLD)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element GOLD'
        ilast = -1
        return

      case(MERCURY)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element MERCURY'
        ilast = -1
        return

      case(THALLIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element THALLIUM'
        ilast = -1
        return

      case(LEAD)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element LEAD'
        ilast = -1
        return

      case(BISMUTH)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element BISMUTH'
        ilast = -1
        return

      case(POLONIUM)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element POLONIUM'
        ilast = -1
        return

      case(ASTATINE)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element ASTATINE'
        ilast = -1
        return

      case(RADON)
        if(maswrk) write(iw,*) 'ERROR: 6-311G(2df,2pd) basis not available for element RADON'
        ilast = -1
        return

      case default
        if(maswrk) write(iw,*) 'ERROR: Element not supported in basis', element_number
        ilast = -1
        return
    end select

  end subroutine get_basis_b_6_311g_2df_2pd

end submodule basis_driver_b_6_311g_2df_2pd