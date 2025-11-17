submodule (basis_driver) basis_driver_aug_cc_pv6z
  implicit none

contains

  module subroutine get_basis_aug_cc_pv6z(basis_data, element_number, ilast)
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
        basis_data%exponents(1) = 0.1776776D+04
        basis_data%s_coef(1) = 0.4400000D-04
        basis_data%exponents(2) = 0.2540177D+03
        basis_data%s_coef(2) = 0.3720000D-03
        basis_data%exponents(3) = 0.5469804D+02
        basis_data%s_coef(3) = 0.2094000D-02
        basis_data%exponents(4) = 0.1501834D+02
        basis_data%s_coef(4) = 0.8863000D-02
        basis_data%exponents(5) = 0.4915078D+01
        basis_data%s_coef(5) = 0.3054000D-01
        basis_data%exponents(6) = 0.1794924D+01
        basis_data%s_coef(6) = 0.1000000D+01
        basis_data%exponents(7) = 0.7107160D+00
        basis_data%s_coef(7) = 0.1000000D+01
        basis_data%exponents(8) = 0.3048020D+00
        basis_data%s_coef(8) = 0.1000000D+01
        basis_data%exponents(9) = 0.1380460D+00
        basis_data%s_coef(9) = 0.1000000D+01
        basis_data%exponents(10) = 0.6215700D-01
        basis_data%s_coef(10) = 0.1000000D+01
        basis_data%exponents(11) = 0.1890000D-01
        basis_data%s_coef(11) = 0.1000000D+01
        basis_data%exponents(12) = 0.8649000D+01
        basis_data%p_coef(12) = 0.1000000D+01
        basis_data%exponents(13) = 0.3430000D+01
        basis_data%p_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1360000D+01
        basis_data%p_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.5390000D+00
        basis_data%p_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.2140000D+00
        basis_data%p_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.6700000D-01
        basis_data%p_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.4453000D+01
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.1958000D+01
        basis_data%d_coef(19) = 0.1000000D+01
        basis_data%exponents(20) = 0.8610000D+00
        basis_data%d_coef(20) = 0.1000000D+01
        basis_data%exponents(21) = 0.3780000D+00
        basis_data%d_coef(21) = 0.1000000D+01
        basis_data%exponents(22) = 0.1260000D+00
        basis_data%d_coef(22) = 0.1000000D+01
        basis_data%exponents(23) = 0.4100000D+01
        basis_data%f_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.1780000D+01
        basis_data%f_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.7730000D+00
        basis_data%f_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.2450000D+00
        basis_data%f_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.3199000D+01
        basis_data%g_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.1326000D+01
        basis_data%g_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.4070000D+00
        basis_data%g_coef(29) = 0.1000000D+01
        basis_data%exponents(30) = 0.2653000D+01
        basis_data%h_coef(30) = 0.1000000D+01
        basis_data%exponents(31) = 0.6820000D+00
        basis_data%h_coef(31) = 0.1000000D+01
        ilast = 31

      case(HELIUM)
        basis_data%exponents(1) = 0.4785000D+04
        basis_data%s_coef(1) = 0.6000000D-06
        basis_data%exponents(2) = 0.7170000D+03
        basis_data%s_coef(2) = 0.4700000D-05
        basis_data%exponents(3) = 0.1632000D+03
        basis_data%s_coef(3) = 0.2440000D-04
        basis_data%exponents(4) = 0.4626000D+02
        basis_data%s_coef(4) = 0.1012000D-03
        basis_data%exponents(5) = 0.1510000D+02
        basis_data%s_coef(5) = 0.3486000D-03
        basis_data%exponents(6) = 0.5437000D+01
        basis_data%s_coef(6) = 0.1000000D+01
        basis_data%exponents(7) = 0.2088000D+01
        basis_data%s_coef(7) = 0.1000000D+01
        basis_data%exponents(8) = 0.8297000D+00
        basis_data%s_coef(8) = 0.1000000D+01
        basis_data%exponents(9) = 0.3366000D+00
        basis_data%s_coef(9) = 0.1000000D+01
        basis_data%exponents(10) = 0.1369000D+00
        basis_data%s_coef(10) = 0.1000000D+01
        basis_data%exponents(11) = 0.4473000D-01
        basis_data%s_coef(11) = 0.1000000D+01
        basis_data%exponents(12) = 0.1610400D+02
        basis_data%p_coef(12) = 0.1000000D+01
        basis_data%exponents(13) = 0.6342000D+01
        basis_data%p_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.2498000D+01
        basis_data%p_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.9840000D+00
        basis_data%p_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.3870000D+00
        basis_data%p_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.1280000D+00
        basis_data%p_coef(17) = 0.1000000D+01
        basis_data%exponents(18) = 0.1249800D+02
        basis_data%d_coef(18) = 0.1000000D+01
        basis_data%exponents(19) = 0.4886000D+01
        basis_data%d_coef(19) = 0.1000000D+01
        basis_data%exponents(20) = 0.1910000D+01
        basis_data%d_coef(20) = 0.1000000D+01
        basis_data%exponents(21) = 0.7470000D+00
        basis_data%d_coef(21) = 0.1000000D+01
        basis_data%exponents(22) = 0.2410000D+00
        basis_data%d_coef(22) = 0.1000000D+01
        basis_data%exponents(23) = 0.9276000D+01
        basis_data%f_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.3462000D+01
        basis_data%f_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.1292000D+01
        basis_data%f_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.4070000D+00
        basis_data%f_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.6586000D+01
        basis_data%g_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.2236000D+01
        basis_data%g_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.6860000D+00
        basis_data%g_coef(29) = 0.1000000D+01
        basis_data%exponents(30) = 0.4159000D+01
        basis_data%h_coef(30) = 0.1000000D+01
        basis_data%exponents(31) = 0.1016000D+01
        basis_data%h_coef(31) = 0.1000000D+01
        ilast = 31

      case(LITHIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element LITHIUM'
        ilast = -1
        return

      case(BERYLLIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element BERYLLIUM'
        ilast = -1
        return

      case(BORON)
        basis_data%exponents(1) = 0.2104000D+06
        basis_data%s_coef(1) = 0.5830000D-05
        basis_data%exponents(2) = 0.3150000D+05
        basis_data%s_coef(2) = 0.4532000D-04
        basis_data%exponents(3) = 0.7169000D+04
        basis_data%s_coef(3) = 0.2383800D-03
        basis_data%exponents(4) = 0.2030000D+04
        basis_data%s_coef(4) = 0.1005700D-02
        basis_data%exponents(5) = 0.6625000D+03
        basis_data%s_coef(5) = 0.3644960D-02
        basis_data%exponents(6) = 0.2392000D+03
        basis_data%s_coef(6) = 0.1173628D-01
        basis_data%exponents(7) = 0.9326000D+02
        basis_data%s_coef(7) = 0.3380702D-01
        basis_data%exponents(8) = 0.3864000D+02
        basis_data%s_coef(8) = 0.8556593D-01
        basis_data%exponents(9) = 0.1678000D+02
        basis_data%s_coef(9) = 0.1826032D+00
        basis_data%exponents(10) = 0.7541000D+01
        basis_data%s_coef(10) = 0.3058376D+00
        basis_data%exponents(11) = 0.3482000D+01
        basis_data%s_coef(11) = 0.3408035D+00
        basis_data%exponents(12) = 0.2104000D+06
        basis_data%s_coef(12) = -0.1180000D-05
        basis_data%exponents(13) = 0.3150000D+05
        basis_data%s_coef(13) = -0.9150000D-05
        basis_data%exponents(14) = 0.7169000D+04
        basis_data%s_coef(14) = -0.4819000D-04
        basis_data%exponents(15) = 0.2030000D+04
        basis_data%s_coef(15) = -0.2030600D-03
        basis_data%exponents(16) = 0.6625000D+03
        basis_data%s_coef(16) = -0.7391700D-03
        basis_data%exponents(17) = 0.2392000D+03
        basis_data%s_coef(17) = -0.2386030D-02
        basis_data%exponents(18) = 0.9326000D+02
        basis_data%s_coef(18) = -0.6986540D-02
        basis_data%exponents(19) = 0.3864000D+02
        basis_data%s_coef(19) = -0.1811594D-01
        basis_data%exponents(20) = 0.1678000D+02
        basis_data%s_coef(20) = -0.4123129D-01
        basis_data%exponents(21) = 0.7541000D+01
        basis_data%s_coef(21) = -0.7781353D-01
        basis_data%exponents(22) = 0.3482000D+01
        basis_data%s_coef(22) = -0.1212318D+00
        basis_data%exponents(23) = 0.1618000D+01
        basis_data%s_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.6270000D+00
        basis_data%s_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.2934000D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1310000D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.5815000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.2300000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.1925000D+03
        basis_data%p_coef(29) = 0.1349000D-03
        basis_data%exponents(30) = 0.4564000D+02
        basis_data%p_coef(30) = 0.1147410D-02
        basis_data%exponents(31) = 0.1475000D+02
        basis_data%p_coef(31) = 0.5847930D-02
        basis_data%exponents(32) = 0.5503000D+01
        basis_data%p_coef(32) = 0.2117091D-01
        basis_data%exponents(33) = 0.2222000D+01
        basis_data%p_coef(33) = 0.6266872D-01
        basis_data%exponents(34) = 0.9590000D+00
        basis_data%p_coef(34) = 0.1000000D+01
        basis_data%exponents(35) = 0.4314000D+00
        basis_data%p_coef(35) = 0.1000000D+01
        basis_data%exponents(36) = 0.1969000D+00
        basis_data%p_coef(36) = 0.1000000D+01
        basis_data%exponents(37) = 0.9033000D-01
        basis_data%p_coef(37) = 0.1000000D+01
        basis_data%exponents(38) = 0.4066000D-01
        basis_data%p_coef(38) = 0.1000000D+01
        basis_data%exponents(39) = 0.1365000D-01
        basis_data%p_coef(39) = 0.1000000D+01
        basis_data%exponents(40) = 0.2886000D+01
        basis_data%d_coef(40) = 0.1000000D+01
        basis_data%exponents(41) = 0.1267000D+01
        basis_data%d_coef(41) = 0.1000000D+01
        basis_data%exponents(42) = 0.5560000D+00
        basis_data%d_coef(42) = 0.1000000D+01
        basis_data%exponents(43) = 0.2440000D+00
        basis_data%d_coef(43) = 0.1000000D+01
        basis_data%exponents(44) = 0.1070000D+00
        basis_data%d_coef(44) = 0.1000000D+01
        basis_data%exponents(45) = 0.3920000D-01
        basis_data%d_coef(45) = 0.1000000D+01
        basis_data%exponents(46) = 0.1651000D+01
        basis_data%f_coef(46) = 0.1000000D+01
        basis_data%exponents(47) = 0.8002000D+00
        basis_data%f_coef(47) = 0.1000000D+01
        basis_data%exponents(48) = 0.3878000D+00
        basis_data%f_coef(48) = 0.1000000D+01
        basis_data%exponents(49) = 0.1880000D+00
        basis_data%f_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.7330000D-01
        basis_data%f_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.1646900D+01
        basis_data%g_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.7889000D+00
        basis_data%g_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.3779000D+00
        basis_data%g_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.1620000D+00
        basis_data%g_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.1312000D+01
        basis_data%h_coef(55) = 0.1000000D+01
        basis_data%exponents(56) = 0.5806000D+00
        basis_data%h_coef(56) = 0.1000000D+01
        basis_data%exponents(57) = 0.2880000D+00
        basis_data%h_coef(57) = 0.1000000D+01
        basis_data%exponents(58) = 0.9847000D+00
        basis_data%i_coef(58) = 0.1000000D+01
        basis_data%exponents(59) = 0.5000000D+00
        basis_data%i_coef(59) = 0.1000000D+01
        ilast = 59

      case(CARBON)
        basis_data%exponents(1) = 0.3121000D+06
        basis_data%s_coef(1) = 0.5670000D-05
        basis_data%exponents(2) = 0.4674000D+05
        basis_data%s_coef(2) = 0.4410000D-04
        basis_data%exponents(3) = 0.1064000D+05
        basis_data%s_coef(3) = 0.2319000D-03
        basis_data%exponents(4) = 0.3013000D+04
        basis_data%s_coef(4) = 0.9789700D-03
        basis_data%exponents(5) = 0.9828000D+03
        basis_data%s_coef(5) = 0.3551630D-02
        basis_data%exponents(6) = 0.3548000D+03
        basis_data%s_coef(6) = 0.1144061D-01
        basis_data%exponents(7) = 0.1384000D+03
        basis_data%s_coef(7) = 0.3299855D-01
        basis_data%exponents(8) = 0.5735000D+02
        basis_data%s_coef(8) = 0.8405347D-01
        basis_data%exponents(9) = 0.2492000D+02
        basis_data%s_coef(9) = 0.1806761D+00
        basis_data%exponents(10) = 0.1123000D+02
        basis_data%s_coef(10) = 0.3049114D+00
        basis_data%exponents(11) = 0.5201000D+01
        basis_data%s_coef(11) = 0.3414157D+00
        basis_data%exponents(12) = 0.3121000D+06
        basis_data%s_coef(12) = -0.1210000D-05
        basis_data%exponents(13) = 0.4674000D+05
        basis_data%s_coef(13) = -0.9390000D-05
        basis_data%exponents(14) = 0.1064000D+05
        basis_data%s_coef(14) = -0.4947000D-04
        basis_data%exponents(15) = 0.3013000D+04
        basis_data%s_coef(15) = -0.2085700D-03
        basis_data%exponents(16) = 0.9828000D+03
        basis_data%s_coef(16) = -0.7601500D-03
        basis_data%exponents(17) = 0.3548000D+03
        basis_data%s_coef(17) = -0.2454690D-02
        basis_data%exponents(18) = 0.1384000D+03
        basis_data%s_coef(18) = -0.7201530D-02
        basis_data%exponents(19) = 0.5735000D+02
        basis_data%s_coef(19) = -0.1880742D-01
        basis_data%exponents(20) = 0.2492000D+02
        basis_data%s_coef(20) = -0.4325001D-01
        basis_data%exponents(21) = 0.1123000D+02
        basis_data%s_coef(21) = -0.8259733D-01
        basis_data%exponents(22) = 0.5201000D+01
        basis_data%s_coef(22) = -0.1285759D+00
        basis_data%exponents(23) = 0.2426000D+01
        basis_data%s_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.9673000D+00
        basis_data%s_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.4456000D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1971000D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.8635000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.3540000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.2952000D+03
        basis_data%p_coef(29) = 0.1424900D-03
        basis_data%exponents(30) = 0.6998000D+02
        basis_data%p_coef(30) = 0.1220100D-02
        basis_data%exponents(31) = 0.2264000D+02
        basis_data%p_coef(31) = 0.6336960D-02
        basis_data%exponents(32) = 0.8485000D+01
        basis_data%p_coef(32) = 0.2351875D-01
        basis_data%exponents(33) = 0.3459000D+01
        basis_data%p_coef(33) = 0.6990447D-01
        basis_data%exponents(34) = 0.1504000D+01
        basis_data%p_coef(34) = 0.1000000D+01
        basis_data%exponents(35) = 0.6783000D+00
        basis_data%p_coef(35) = 0.1000000D+01
        basis_data%exponents(36) = 0.3087000D+00
        basis_data%p_coef(36) = 0.1000000D+01
        basis_data%exponents(37) = 0.1400000D+00
        basis_data%p_coef(37) = 0.1000000D+01
        basis_data%exponents(38) = 0.6178000D-01
        basis_data%p_coef(38) = 0.1000000D+01
        basis_data%exponents(39) = 0.2376000D-01
        basis_data%p_coef(39) = 0.1000000D+01
        basis_data%exponents(40) = 0.4542000D+01
        basis_data%d_coef(40) = 0.1000000D+01
        basis_data%exponents(41) = 0.1979000D+01
        basis_data%d_coef(41) = 0.1000000D+01
        basis_data%exponents(42) = 0.8621000D+00
        basis_data%d_coef(42) = 0.1000000D+01
        basis_data%exponents(43) = 0.3756000D+00
        basis_data%d_coef(43) = 0.1000000D+01
        basis_data%exponents(44) = 0.1636000D+00
        basis_data%d_coef(44) = 0.1000000D+01
        basis_data%exponents(45) = 0.6360000D-01
        basis_data%d_coef(45) = 0.1000000D+01
        basis_data%exponents(46) = 0.2631000D+01
        basis_data%f_coef(46) = 0.1000000D+01
        basis_data%exponents(47) = 0.1255000D+01
        basis_data%f_coef(47) = 0.1000000D+01
        basis_data%exponents(48) = 0.5988000D+00
        basis_data%f_coef(48) = 0.1000000D+01
        basis_data%exponents(49) = 0.2857000D+00
        basis_data%f_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.1180000D+00
        basis_data%f_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.2652000D+01
        basis_data%g_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.1204000D+01
        basis_data%g_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.5470000D+00
        basis_data%g_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.2540000D+00
        basis_data%g_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.2030000D+01
        basis_data%h_coef(55) = 0.1000000D+01
        basis_data%exponents(56) = 0.8511000D+00
        basis_data%h_coef(56) = 0.1000000D+01
        basis_data%exponents(57) = 0.4510000D+00
        basis_data%h_coef(57) = 0.1000000D+01
        basis_data%exponents(58) = 0.1491000D+01
        basis_data%i_coef(58) = 0.1000000D+01
        basis_data%exponents(59) = 0.7760000D+00
        basis_data%i_coef(59) = 0.1000000D+01
        ilast = 59

      case(NITROGEN)
        basis_data%exponents(1) = 0.4323000D+06
        basis_data%s_coef(1) = 0.5590000D-05
        basis_data%exponents(2) = 0.6470000D+05
        basis_data%s_coef(2) = 0.4351000D-04
        basis_data%exponents(3) = 0.1472000D+05
        basis_data%s_coef(3) = 0.2289300D-03
        basis_data%exponents(4) = 0.4170000D+04
        basis_data%s_coef(4) = 0.9650200D-03
        basis_data%exponents(5) = 0.1361000D+04
        basis_data%s_coef(5) = 0.3502190D-02
        basis_data%exponents(6) = 0.4912000D+03
        basis_data%s_coef(6) = 0.1129212D-01
        basis_data%exponents(7) = 0.1916000D+03
        basis_data%s_coef(7) = 0.3261283D-01
        basis_data%exponents(8) = 0.7941000D+02
        basis_data%s_coef(8) = 0.8329727D-01
        basis_data%exponents(9) = 0.3453000D+02
        basis_data%s_coef(9) = 0.1799857D+00
        basis_data%exponents(10) = 0.1558000D+02
        basis_data%s_coef(10) = 0.3050035D+00
        basis_data%exponents(11) = 0.7232000D+01
        basis_data%s_coef(11) = 0.3411593D+00
        basis_data%exponents(12) = 0.4323000D+06
        basis_data%s_coef(12) = -0.1230000D-05
        basis_data%exponents(13) = 0.6470000D+05
        basis_data%s_coef(13) = -0.9580000D-05
        basis_data%exponents(14) = 0.1472000D+05
        basis_data%s_coef(14) = -0.5051000D-04
        basis_data%exponents(15) = 0.4170000D+04
        basis_data%s_coef(15) = -0.2126400D-03
        basis_data%exponents(16) = 0.1361000D+04
        basis_data%s_coef(16) = -0.7753400D-03
        basis_data%exponents(17) = 0.4912000D+03
        basis_data%s_coef(17) = -0.2506240D-02
        basis_data%exponents(18) = 0.1916000D+03
        basis_data%s_coef(18) = -0.7365290D-02
        basis_data%exponents(19) = 0.7941000D+02
        basis_data%s_coef(19) = -0.1930167D-01
        basis_data%exponents(20) = 0.3453000D+02
        basis_data%s_coef(20) = -0.4471738D-01
        basis_data%exponents(21) = 0.1558000D+02
        basis_data%s_coef(21) = -0.8606647D-01
        basis_data%exponents(22) = 0.7232000D+01
        basis_data%s_coef(22) = -0.1332963D+00
        basis_data%exponents(23) = 0.3382000D+01
        basis_data%s_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.1369000D+01
        basis_data%s_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.6248000D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.2747000D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.1192000D+00
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.4714000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.4159000D+03
        basis_data%p_coef(29) = 0.1484100D-03
        basis_data%exponents(30) = 0.9861000D+02
        basis_data%p_coef(30) = 0.1276340D-02
        basis_data%exponents(31) = 0.3192000D+02
        basis_data%p_coef(31) = 0.6702420D-02
        basis_data%exponents(32) = 0.1200000D+02
        basis_data%p_coef(32) = 0.2526170D-01
        basis_data%exponents(33) = 0.4919000D+01
        basis_data%p_coef(33) = 0.7518943D-01
        basis_data%exponents(34) = 0.2148000D+01
        basis_data%p_coef(34) = 0.1000000D+01
        basis_data%exponents(35) = 0.9696000D+00
        basis_data%p_coef(35) = 0.1000000D+01
        basis_data%exponents(36) = 0.4399000D+00
        basis_data%p_coef(36) = 0.1000000D+01
        basis_data%exponents(37) = 0.1978000D+00
        basis_data%p_coef(37) = 0.1000000D+01
        basis_data%exponents(38) = 0.8603000D-01
        basis_data%p_coef(38) = 0.1000000D+01
        basis_data%exponents(39) = 0.3150000D-01
        basis_data%p_coef(39) = 0.1000000D+01
        basis_data%exponents(40) = 0.6717000D+01
        basis_data%d_coef(40) = 0.1000000D+01
        basis_data%exponents(41) = 0.2896000D+01
        basis_data%d_coef(41) = 0.1000000D+01
        basis_data%exponents(42) = 0.1249000D+01
        basis_data%d_coef(42) = 0.1000000D+01
        basis_data%exponents(43) = 0.5380000D+00
        basis_data%d_coef(43) = 0.1000000D+01
        basis_data%exponents(44) = 0.2320000D+00
        basis_data%d_coef(44) = 0.1000000D+01
        basis_data%exponents(45) = 0.8740000D-01
        basis_data%d_coef(45) = 0.1000000D+01
        basis_data%exponents(46) = 0.3829000D+01
        basis_data%f_coef(46) = 0.1000000D+01
        basis_data%exponents(47) = 0.1795000D+01
        basis_data%f_coef(47) = 0.1000000D+01
        basis_data%exponents(48) = 0.8410000D+00
        basis_data%f_coef(48) = 0.1000000D+01
        basis_data%exponents(49) = 0.3940000D+00
        basis_data%f_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.1510000D+00
        basis_data%f_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.3856000D+01
        basis_data%g_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.1702000D+01
        basis_data%g_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.7510000D+00
        basis_data%g_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.3260000D+00
        basis_data%g_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.2875000D+01
        basis_data%h_coef(55) = 0.1000000D+01
        basis_data%exponents(56) = 0.1170000D+01
        basis_data%h_coef(56) = 0.1000000D+01
        basis_data%exponents(57) = 0.5870000D+00
        basis_data%h_coef(57) = 0.1000000D+01
        basis_data%exponents(58) = 0.2099000D+01
        basis_data%i_coef(58) = 0.1000000D+01
        basis_data%exponents(59) = 0.1041000D+01
        basis_data%i_coef(59) = 0.1000000D+01
        ilast = 59

      case(OXYGEN)
        basis_data%exponents(1) = 0.5708000D+06
        basis_data%s_coef(1) = 0.5550000D-05
        basis_data%exponents(2) = 0.8548000D+05
        basis_data%s_coef(2) = 0.4311000D-04
        basis_data%exponents(3) = 0.1946000D+05
        basis_data%s_coef(3) = 0.2266700D-03
        basis_data%exponents(4) = 0.5512000D+04
        basis_data%s_coef(4) = 0.9563700D-03
        basis_data%exponents(5) = 0.1798000D+04
        basis_data%s_coef(5) = 0.3473200D-02
        basis_data%exponents(6) = 0.6489000D+03
        basis_data%s_coef(6) = 0.1119778D-01
        basis_data%exponents(7) = 0.2531000D+03
        basis_data%s_coef(7) = 0.3238766D-01
        basis_data%exponents(8) = 0.1049000D+03
        basis_data%s_coef(8) = 0.8285977D-01
        basis_data%exponents(9) = 0.4565000D+02
        basis_data%s_coef(9) = 0.1795838D+00
        basis_data%exponents(10) = 0.2062000D+02
        basis_data%s_coef(10) = 0.3052211D+00
        basis_data%exponents(11) = 0.9587000D+01
        basis_data%s_coef(11) = 0.3408935D+00
        basis_data%exponents(12) = 0.5708000D+06
        basis_data%s_coef(12) = -0.1260000D-05
        basis_data%exponents(13) = 0.8548000D+05
        basis_data%s_coef(13) = -0.9770000D-05
        basis_data%exponents(14) = 0.1946000D+05
        basis_data%s_coef(14) = -0.5148000D-04
        basis_data%exponents(15) = 0.5512000D+04
        basis_data%s_coef(15) = -0.2169600D-03
        basis_data%exponents(16) = 0.1798000D+04
        basis_data%s_coef(16) = -0.7916200D-03
        basis_data%exponents(17) = 0.6489000D+03
        basis_data%s_coef(17) = -0.2559000D-02
        basis_data%exponents(18) = 0.2531000D+03
        basis_data%s_coef(18) = -0.7533130D-02
        basis_data%exponents(19) = 0.1049000D+03
        basis_data%s_coef(19) = -0.1978897D-01
        basis_data%exponents(20) = 0.4565000D+02
        basis_data%s_coef(20) = -0.4606288D-01
        basis_data%exponents(21) = 0.2062000D+02
        basis_data%s_coef(21) = -0.8919560D-01
        basis_data%exponents(22) = 0.9587000D+01
        basis_data%s_coef(22) = -0.1375422D+00
        basis_data%exponents(23) = 0.4493000D+01
        basis_data%s_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.1837000D+01
        basis_data%s_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.8349000D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.3658000D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.1570000D+00
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.5935000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.5256000D+03
        basis_data%p_coef(29) = 0.1666400D-03
        basis_data%exponents(30) = 0.1246000D+03
        basis_data%p_coef(30) = 0.1433360D-02
        basis_data%exponents(31) = 0.4034000D+02
        basis_data%p_coef(31) = 0.7547620D-02
        basis_data%exponents(32) = 0.1518000D+02
        basis_data%p_coef(32) = 0.2859456D-01
        basis_data%exponents(33) = 0.6245000D+01
        basis_data%p_coef(33) = 0.8438858D-01
        basis_data%exponents(34) = 0.2732000D+01
        basis_data%p_coef(34) = 0.1000000D+01
        basis_data%exponents(35) = 0.1227000D+01
        basis_data%p_coef(35) = 0.1000000D+01
        basis_data%exponents(36) = 0.5492000D+00
        basis_data%p_coef(36) = 0.1000000D+01
        basis_data%exponents(37) = 0.2418000D+00
        basis_data%p_coef(37) = 0.1000000D+01
        basis_data%exponents(38) = 0.1025000D+00
        basis_data%p_coef(38) = 0.1000000D+01
        basis_data%exponents(39) = 0.3380000D-01
        basis_data%p_coef(39) = 0.1000000D+01
        basis_data%exponents(40) = 0.8253000D+01
        basis_data%d_coef(40) = 0.1000000D+01
        basis_data%exponents(41) = 0.3597000D+01
        basis_data%d_coef(41) = 0.1000000D+01
        basis_data%exponents(42) = 0.1568000D+01
        basis_data%d_coef(42) = 0.1000000D+01
        basis_data%exponents(43) = 0.6840000D+00
        basis_data%d_coef(43) = 0.1000000D+01
        basis_data%exponents(44) = 0.2980000D+00
        basis_data%d_coef(44) = 0.1000000D+01
        basis_data%exponents(45) = 0.1150000D+00
        basis_data%d_coef(45) = 0.1000000D+01
        basis_data%exponents(46) = 0.5430000D+01
        basis_data%f_coef(46) = 0.1000000D+01
        basis_data%exponents(47) = 0.2416000D+01
        basis_data%f_coef(47) = 0.1000000D+01
        basis_data%exponents(48) = 0.1075000D+01
        basis_data%f_coef(48) = 0.1000000D+01
        basis_data%exponents(49) = 0.4780000D+00
        basis_data%f_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.1950000D+00
        basis_data%f_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.5211000D+01
        basis_data%g_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.2190000D+01
        basis_data%g_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.9200000D+00
        basis_data%g_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.4060000D+00
        basis_data%g_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.3872000D+01
        basis_data%h_coef(55) = 0.1000000D+01
        basis_data%exponents(56) = 0.1505000D+01
        basis_data%h_coef(56) = 0.1000000D+01
        basis_data%exponents(57) = 0.7480000D+00
        basis_data%h_coef(57) = 0.1000000D+01
        basis_data%exponents(58) = 0.2773000D+01
        basis_data%i_coef(58) = 0.1000000D+01
        basis_data%exponents(59) = 0.1345000D+01
        basis_data%i_coef(59) = 0.1000000D+01
        ilast = 59

      case(FLUORINE)
        basis_data%exponents(1) = 0.7235000D+06
        basis_data%s_coef(1) = 0.5560000D-05
        basis_data%exponents(2) = 0.1084000D+06
        basis_data%s_coef(2) = 0.4318000D-04
        basis_data%exponents(3) = 0.2468000D+05
        basis_data%s_coef(3) = 0.2270000D-03
        basis_data%exponents(4) = 0.6990000D+04
        basis_data%s_coef(4) = 0.9580300D-03
        basis_data%exponents(5) = 0.2282000D+04
        basis_data%s_coef(5) = 0.3470150D-02
        basis_data%exponents(6) = 0.8246000D+03
        basis_data%s_coef(6) = 0.1118526D-01
        basis_data%exponents(7) = 0.3218000D+03
        basis_data%s_coef(7) = 0.3232880D-01
        basis_data%exponents(8) = 0.1335000D+03
        basis_data%s_coef(8) = 0.8279545D-01
        basis_data%exponents(9) = 0.5811000D+02
        basis_data%s_coef(9) = 0.1798802D+00
        basis_data%exponents(10) = 0.2628000D+02
        basis_data%s_coef(10) = 0.3055783D+00
        basis_data%exponents(11) = 0.1224000D+02
        basis_data%s_coef(11) = 0.3402684D+00
        basis_data%exponents(12) = 0.7235000D+06
        basis_data%s_coef(12) = -0.1290000D-05
        basis_data%exponents(13) = 0.1084000D+06
        basis_data%s_coef(13) = -0.9990000D-05
        basis_data%exponents(14) = 0.2468000D+05
        basis_data%s_coef(14) = -0.5260000D-04
        basis_data%exponents(15) = 0.6990000D+04
        basis_data%s_coef(15) = -0.2217200D-03
        basis_data%exponents(16) = 0.2282000D+04
        basis_data%s_coef(16) = -0.8069200D-03
        basis_data%exponents(17) = 0.8246000D+03
        basis_data%s_coef(17) = -0.2608170D-02
        basis_data%exponents(18) = 0.3218000D+03
        basis_data%s_coef(18) = -0.7674020D-02
        basis_data%exponents(19) = 0.1335000D+03
        basis_data%s_coef(19) = -0.2019353D-01
        basis_data%exponents(20) = 0.5811000D+02
        basis_data%s_coef(20) = -0.4718752D-01
        basis_data%exponents(21) = 0.2628000D+02
        basis_data%s_coef(21) = -0.9158009D-01
        basis_data%exponents(22) = 0.1224000D+02
        basis_data%s_coef(22) = -0.1404856D+00
        basis_data%exponents(23) = 0.5747000D+01
        basis_data%s_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.2365000D+01
        basis_data%s_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.1071000D+01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.4681000D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.1994000D+00
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.7315000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.6600000D+03
        basis_data%p_coef(29) = 0.1772100D-03
        basis_data%exponents(30) = 0.1564000D+03
        basis_data%p_coef(30) = 0.1526910D-02
        basis_data%exponents(31) = 0.5064000D+02
        basis_data%p_coef(31) = 0.8072070D-02
        basis_data%exponents(32) = 0.1908000D+02
        basis_data%p_coef(32) = 0.3074021D-01
        basis_data%exponents(33) = 0.7872000D+01
        basis_data%p_coef(33) = 0.9011914D-01
        basis_data%exponents(34) = 0.3449000D+01
        basis_data%p_coef(34) = 0.1000000D+01
        basis_data%exponents(35) = 0.1545000D+01
        basis_data%p_coef(35) = 0.1000000D+01
        basis_data%exponents(36) = 0.6864000D+00
        basis_data%p_coef(36) = 0.1000000D+01
        basis_data%exponents(37) = 0.2986000D+00
        basis_data%p_coef(37) = 0.1000000D+01
        basis_data%exponents(38) = 0.1245000D+00
        basis_data%p_coef(38) = 0.1000000D+01
        basis_data%exponents(39) = 0.4760000D-01
        basis_data%p_coef(39) = 0.1000000D+01
        basis_data%exponents(40) = 0.1057300D+02
        basis_data%d_coef(40) = 0.1000000D+01
        basis_data%exponents(41) = 0.4613000D+01
        basis_data%d_coef(41) = 0.1000000D+01
        basis_data%exponents(42) = 0.2013000D+01
        basis_data%d_coef(42) = 0.1000000D+01
        basis_data%exponents(43) = 0.8780000D+00
        basis_data%d_coef(43) = 0.1000000D+01
        basis_data%exponents(44) = 0.3830000D+00
        basis_data%d_coef(44) = 0.1000000D+01
        basis_data%exponents(45) = 0.1510000D+00
        basis_data%d_coef(45) = 0.1000000D+01
        basis_data%exponents(46) = 0.7563000D+01
        basis_data%f_coef(46) = 0.1000000D+01
        basis_data%exponents(47) = 0.3330000D+01
        basis_data%f_coef(47) = 0.1000000D+01
        basis_data%exponents(48) = 0.1466000D+01
        basis_data%f_coef(48) = 0.1000000D+01
        basis_data%exponents(49) = 0.6450000D+00
        basis_data%f_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.2720000D+00
        basis_data%f_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.6735000D+01
        basis_data%g_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.2783000D+01
        basis_data%g_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.1150000D+01
        basis_data%g_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.5200000D+00
        basis_data%g_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.5088000D+01
        basis_data%h_coef(55) = 0.1000000D+01
        basis_data%exponents(56) = 0.1937000D+01
        basis_data%h_coef(56) = 0.1000000D+01
        basis_data%exponents(57) = 0.9850000D+00
        basis_data%h_coef(57) = 0.1000000D+01
        basis_data%exponents(58) = 0.3581000D+01
        basis_data%i_coef(58) = 0.1000000D+01
        basis_data%exponents(59) = 0.1739000D+01
        basis_data%i_coef(59) = 0.1000000D+01
        ilast = 59

      case(NEON)
        basis_data%exponents(1) = 0.9024000D+06
        basis_data%s_coef(1) = 0.5510000D-05
        basis_data%exponents(2) = 0.1351000D+06
        basis_data%s_coef(2) = 0.4282000D-04
        basis_data%exponents(3) = 0.3075000D+05
        basis_data%s_coef(3) = 0.2251400D-03
        basis_data%exponents(4) = 0.8710000D+04
        basis_data%s_coef(4) = 0.9501600D-03
        basis_data%exponents(5) = 0.2842000D+04
        basis_data%s_coef(5) = 0.3447190D-02
        basis_data%exponents(6) = 0.1026000D+04
        basis_data%s_coef(6) = 0.1112545D-01
        basis_data%exponents(7) = 0.4001000D+03
        basis_data%s_coef(7) = 0.3220568D-01
        basis_data%exponents(8) = 0.1659000D+03
        basis_data%s_coef(8) = 0.8259891D-01
        basis_data%exponents(9) = 0.7221000D+02
        basis_data%s_coef(9) = 0.1799056D+00
        basis_data%exponents(10) = 0.3266000D+02
        basis_data%s_coef(10) = 0.3060521D+00
        basis_data%exponents(11) = 0.1522000D+02
        basis_data%s_coef(11) = 0.3401256D+00
        basis_data%exponents(12) = 0.9024000D+06
        basis_data%s_coef(12) = -0.1290000D-05
        basis_data%exponents(13) = 0.1351000D+06
        basis_data%s_coef(13) = -0.1005000D-04
        basis_data%exponents(14) = 0.3075000D+05
        basis_data%s_coef(14) = -0.5293000D-04
        basis_data%exponents(15) = 0.8710000D+04
        basis_data%s_coef(15) = -0.2231200D-03
        basis_data%exponents(16) = 0.2842000D+04
        basis_data%s_coef(16) = -0.8133800D-03
        basis_data%exponents(17) = 0.1026000D+04
        basis_data%s_coef(17) = -0.2632300D-02
        basis_data%exponents(18) = 0.4001000D+03
        basis_data%s_coef(18) = -0.7759100D-02
        basis_data%exponents(19) = 0.1659000D+03
        basis_data%s_coef(19) = -0.2045277D-01
        basis_data%exponents(20) = 0.7221000D+02
        basis_data%s_coef(20) = -0.4797505D-01
        basis_data%exponents(21) = 0.3266000D+02
        basis_data%s_coef(21) = -0.9340086D-01
        basis_data%exponents(22) = 0.1522000D+02
        basis_data%s_coef(22) = -0.1427721D+00
        basis_data%exponents(23) = 0.7149000D+01
        basis_data%s_coef(23) = 0.1000000D+01
        basis_data%exponents(24) = 0.2957000D+01
        basis_data%s_coef(24) = 0.1000000D+01
        basis_data%exponents(25) = 0.1335000D+01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.5816000D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.2463000D+00
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.8690000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.8156000D+03
        basis_data%p_coef(29) = 0.1837600D-03
        basis_data%exponents(30) = 0.1933000D+03
        basis_data%p_coef(30) = 0.1585090D-02
        basis_data%exponents(31) = 0.6260000D+02
        basis_data%p_coef(31) = 0.8414640D-02
        basis_data%exponents(32) = 0.2361000D+02
        basis_data%p_coef(32) = 0.3220033D-01
        basis_data%exponents(33) = 0.9762000D+01
        basis_data%p_coef(33) = 0.9396390D-01
        basis_data%exponents(34) = 0.4281000D+01
        basis_data%p_coef(34) = 0.1000000D+01
        basis_data%exponents(35) = 0.1915000D+01
        basis_data%p_coef(35) = 0.1000000D+01
        basis_data%exponents(36) = 0.8476000D+00
        basis_data%p_coef(36) = 0.1000000D+01
        basis_data%exponents(37) = 0.3660000D+00
        basis_data%p_coef(37) = 0.1000000D+01
        basis_data%exponents(38) = 0.1510000D+00
        basis_data%p_coef(38) = 0.1000000D+01
        basis_data%exponents(39) = 0.5660000D-01
        basis_data%p_coef(39) = 0.1000000D+01
        basis_data%exponents(40) = 0.1331700D+02
        basis_data%d_coef(40) = 0.1000000D+01
        basis_data%exponents(41) = 0.5803000D+01
        basis_data%d_coef(41) = 0.1000000D+01
        basis_data%exponents(42) = 0.2529000D+01
        basis_data%d_coef(42) = 0.1000000D+01
        basis_data%exponents(43) = 0.1102000D+01
        basis_data%d_coef(43) = 0.1000000D+01
        basis_data%exponents(44) = 0.4800000D+00
        basis_data%d_coef(44) = 0.1000000D+01
        basis_data%exponents(45) = 0.1870000D+00
        basis_data%d_coef(45) = 0.1000000D+01
        basis_data%exponents(46) = 0.1035600D+02
        basis_data%f_coef(46) = 0.1000000D+01
        basis_data%exponents(47) = 0.4538000D+01
        basis_data%f_coef(47) = 0.1000000D+01
        basis_data%exponents(48) = 0.1989000D+01
        basis_data%f_coef(48) = 0.1000000D+01
        basis_data%exponents(49) = 0.8710000D+00
        basis_data%f_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.3492000D+00
        basis_data%f_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.8345000D+01
        basis_data%g_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.3417000D+01
        basis_data%g_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.1399000D+01
        basis_data%g_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.6345000D+00
        basis_data%g_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.6519000D+01
        basis_data%h_coef(55) = 0.1000000D+01
        basis_data%exponents(56) = 0.2447000D+01
        basis_data%h_coef(56) = 0.1000000D+01
        basis_data%exponents(57) = 0.1209300D+01
        basis_data%h_coef(57) = 0.1000000D+01
        basis_data%exponents(58) = 0.4489000D+01
        basis_data%i_coef(58) = 0.1000000D+01
        basis_data%exponents(59) = 0.2121500D+01
        basis_data%i_coef(59) = 0.1000000D+01
        ilast = 59

      case(SODIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element SODIUM'
        ilast = -1
        return

      case(MAGNESIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element MAGNESIUM'
        ilast = -1
        return

      case(ALUMINUM)
        basis_data%exponents(1) = 0.3652000D+07
        basis_data%s_coef(1) = 0.1900000D-05
        basis_data%exponents(2) = 0.5468000D+06
        basis_data%s_coef(2) = 0.1450000D-04
        basis_data%exponents(3) = 0.1245000D+06
        basis_data%s_coef(3) = 0.7620000D-04
        basis_data%exponents(4) = 0.3544000D+05
        basis_data%s_coef(4) = 0.3158000D-03
        basis_data%exponents(5) = 0.1184000D+05
        basis_data%s_coef(5) = 0.1097400D-02
        basis_data%exponents(6) = 0.4434000D+04
        basis_data%s_coef(6) = 0.3369700D-02
        basis_data%exponents(7) = 0.1812000D+04
        basis_data%s_coef(7) = 0.9322200D-02
        basis_data%exponents(8) = 0.7915000D+03
        basis_data%s_coef(8) = 0.2379920D-01
        basis_data%exponents(9) = 0.3610000D+03
        basis_data%s_coef(9) = 0.5681910D-01
        basis_data%exponents(10) = 0.1695000D+03
        basis_data%s_coef(10) = 0.1224680D+00
        basis_data%exponents(11) = 0.8168000D+02
        basis_data%s_coef(11) = 0.2238970D+00
        basis_data%exponents(12) = 0.4028000D+02
        basis_data%s_coef(12) = 0.3134460D+00
        basis_data%exponents(13) = 0.2025000D+02
        basis_data%s_coef(13) = 0.2749750D+00
        basis_data%exponents(14) = 0.1023000D+02
        basis_data%s_coef(14) = 0.1105640D+00
        basis_data%exponents(15) = 0.4802000D+01
        basis_data%s_coef(15) = 0.1192150D-01
        basis_data%exponents(16) = 0.2339000D+01
        basis_data%s_coef(16) = 0.6528000D-03
        basis_data%exponents(17) = 0.3652000D+07
        basis_data%s_coef(17) = -0.5000000D-06
        basis_data%exponents(18) = 0.5468000D+06
        basis_data%s_coef(18) = -0.3800000D-05
        basis_data%exponents(19) = 0.1245000D+06
        basis_data%s_coef(19) = -0.1980000D-04
        basis_data%exponents(20) = 0.3544000D+05
        basis_data%s_coef(20) = -0.8210000D-04
        basis_data%exponents(21) = 0.1184000D+05
        basis_data%s_coef(21) = -0.2858000D-03
        basis_data%exponents(22) = 0.4434000D+04
        basis_data%s_coef(22) = -0.8785000D-03
        basis_data%exponents(23) = 0.1812000D+04
        basis_data%s_coef(23) = -0.2448200D-02
        basis_data%exponents(24) = 0.7915000D+03
        basis_data%s_coef(24) = -0.6310000D-02
        basis_data%exponents(25) = 0.3610000D+03
        basis_data%s_coef(25) = -0.1548540D-01
        basis_data%exponents(26) = 0.1695000D+03
        basis_data%s_coef(26) = -0.3495890D-01
        basis_data%exponents(27) = 0.8168000D+02
        basis_data%s_coef(27) = -0.7077290D-01
        basis_data%exponents(28) = 0.4028000D+02
        basis_data%s_coef(28) = -0.1194230D+00
        basis_data%exponents(29) = 0.2025000D+02
        basis_data%s_coef(29) = -0.1488420D+00
        basis_data%exponents(30) = 0.1023000D+02
        basis_data%s_coef(30) = -0.5904650D-01
        basis_data%exponents(31) = 0.4802000D+01
        basis_data%s_coef(31) = 0.2166930D+00
        basis_data%exponents(32) = 0.2339000D+01
        basis_data%s_coef(32) = 0.4765570D+00
        basis_data%exponents(33) = 0.3652000D+07
        basis_data%s_coef(33) = 0.1000000D-06
        basis_data%exponents(34) = 0.5468000D+06
        basis_data%s_coef(34) = 0.9000000D-06
        basis_data%exponents(35) = 0.1245000D+06
        basis_data%s_coef(35) = 0.4600000D-05
        basis_data%exponents(36) = 0.3544000D+05
        basis_data%s_coef(36) = 0.1900000D-04
        basis_data%exponents(37) = 0.1184000D+05
        basis_data%s_coef(37) = 0.6590000D-04
        basis_data%exponents(38) = 0.4434000D+04
        basis_data%s_coef(38) = 0.2031000D-03
        basis_data%exponents(39) = 0.1812000D+04
        basis_data%s_coef(39) = 0.5647000D-03
        basis_data%exponents(40) = 0.7915000D+03
        basis_data%s_coef(40) = 0.1462000D-02
        basis_data%exponents(41) = 0.3610000D+03
        basis_data%s_coef(41) = 0.3579400D-02
        basis_data%exponents(42) = 0.1695000D+03
        basis_data%s_coef(42) = 0.8151600D-02
        basis_data%exponents(43) = 0.8168000D+02
        basis_data%s_coef(43) = 0.1652760D-01
        basis_data%exponents(44) = 0.4028000D+02
        basis_data%s_coef(44) = 0.2854670D-01
        basis_data%exponents(45) = 0.2025000D+02
        basis_data%s_coef(45) = 0.3614840D-01
        basis_data%exponents(46) = 0.1023000D+02
        basis_data%s_coef(46) = 0.1538040D-01
        basis_data%exponents(47) = 0.4802000D+01
        basis_data%s_coef(47) = -0.6121410D-01
        basis_data%exponents(48) = 0.2339000D+01
        basis_data%s_coef(48) = -0.1512630D+00
        basis_data%exponents(49) = 0.1163000D+01
        basis_data%s_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.5882000D+00
        basis_data%s_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.2311000D+00
        basis_data%s_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.1027000D+00
        basis_data%s_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.4521000D-01
        basis_data%s_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.1737000D-01
        basis_data%s_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.2884000D+04
        basis_data%p_coef(55) = 0.6380000D-04
        basis_data%exponents(56) = 0.6832000D+03
        basis_data%p_coef(56) = 0.5631000D-03
        basis_data%exponents(57) = 0.2220000D+03
        basis_data%p_coef(57) = 0.3169100D-02
        basis_data%exponents(58) = 0.8482000D+02
        basis_data%p_coef(58) = 0.1324010D-01
        basis_data%exponents(59) = 0.3581000D+02
        basis_data%p_coef(59) = 0.4334030D-01
        basis_data%exponents(60) = 0.1622000D+02
        basis_data%p_coef(60) = 0.1119500D+00
        basis_data%exponents(61) = 0.7702000D+01
        basis_data%p_coef(61) = 0.2177960D+00
        basis_data%exponents(62) = 0.3741000D+01
        basis_data%p_coef(62) = 0.3116750D+00
        basis_data%exponents(63) = 0.1831000D+01
        basis_data%p_coef(63) = 0.3167220D+00
        basis_data%exponents(64) = 0.2884000D+04
        basis_data%p_coef(64) = -0.8000000D-05
        basis_data%exponents(65) = 0.6832000D+03
        basis_data%p_coef(65) = -0.6510000D-04
        basis_data%exponents(66) = 0.2220000D+03
        basis_data%p_coef(66) = -0.3999000D-03
        basis_data%exponents(67) = 0.8482000D+02
        basis_data%p_coef(67) = -0.1536900D-02
        basis_data%exponents(68) = 0.3581000D+02
        basis_data%p_coef(68) = -0.5564400D-02
        basis_data%exponents(69) = 0.1622000D+02
        basis_data%p_coef(69) = -0.1311060D-01
        basis_data%exponents(70) = 0.7702000D+01
        basis_data%p_coef(70) = -0.2972000D-01
        basis_data%exponents(71) = 0.3741000D+01
        basis_data%p_coef(71) = -0.3471950D-01
        basis_data%exponents(72) = 0.1831000D+01
        basis_data%p_coef(72) = -0.5516210D-01
        basis_data%exponents(73) = 0.8878000D+00
        basis_data%p_coef(73) = 0.1000000D+01
        basis_data%exponents(74) = 0.3989000D+00
        basis_data%p_coef(74) = 0.1000000D+01
        basis_data%exponents(75) = 0.1718000D+00
        basis_data%p_coef(75) = 0.1000000D+01
        basis_data%exponents(76) = 0.7298000D-01
        basis_data%p_coef(76) = 0.1000000D+01
        basis_data%exponents(77) = 0.3069000D-01
        basis_data%p_coef(77) = 0.1000000D+01
        basis_data%exponents(78) = 0.1021000D-01
        basis_data%p_coef(78) = 0.1000000D+01
        basis_data%exponents(79) = 0.2214300D+01
        basis_data%d_coef(79) = 0.1000000D+01
        basis_data%exponents(80) = 0.9449000D+00
        basis_data%d_coef(80) = 0.1000000D+01
        basis_data%exponents(81) = 0.4032000D+00
        basis_data%d_coef(81) = 0.1000000D+01
        basis_data%exponents(82) = 0.1721000D+00
        basis_data%d_coef(82) = 0.1000000D+01
        basis_data%exponents(83) = 0.7343000D-01
        basis_data%d_coef(83) = 0.1000000D+01
        basis_data%exponents(84) = 0.2666000D-01
        basis_data%d_coef(84) = 0.1000000D+01
        basis_data%exponents(85) = 0.8756000D+00
        basis_data%f_coef(85) = 0.1000000D+01
        basis_data%exponents(86) = 0.4472000D+00
        basis_data%f_coef(86) = 0.1000000D+01
        basis_data%exponents(87) = 0.2284000D+00
        basis_data%f_coef(87) = 0.1000000D+01
        basis_data%exponents(88) = 0.1167000D+00
        basis_data%f_coef(88) = 0.1000000D+01
        basis_data%exponents(89) = 0.4625000D-01
        basis_data%f_coef(89) = 0.1000000D+01
        basis_data%exponents(90) = 0.6952000D+00
        basis_data%g_coef(90) = 0.1000000D+01
        basis_data%exponents(91) = 0.3771000D+00
        basis_data%g_coef(91) = 0.1000000D+01
        basis_data%exponents(92) = 0.2046000D+00
        basis_data%g_coef(92) = 0.1000000D+01
        basis_data%exponents(93) = 0.8545000D-01
        basis_data%g_coef(93) = 0.1000000D+01
        basis_data%exponents(94) = 0.6560000D+00
        basis_data%h_coef(94) = 0.1000000D+01
        basis_data%exponents(95) = 0.3300000D+00
        basis_data%h_coef(95) = 0.1000000D+01
        basis_data%exponents(96) = 0.1655000D+00
        basis_data%h_coef(96) = 0.1000000D+01
        basis_data%exponents(97) = 0.5302000D+00
        basis_data%i_coef(97) = 0.1000000D+01
        basis_data%exponents(98) = 0.2990000D+00
        basis_data%i_coef(98) = 0.1000000D+01
        ilast = 98

      case(SILICON)
        basis_data%exponents(1) = 0.4465000D+07
        basis_data%s_coef(1) = 0.1700000D-05
        basis_data%exponents(2) = 0.6685000D+06
        basis_data%s_coef(2) = 0.1360000D-04
        basis_data%exponents(3) = 0.1522000D+06
        basis_data%s_coef(3) = 0.7140000D-04
        basis_data%exponents(4) = 0.4330000D+05
        basis_data%s_coef(4) = 0.2973000D-03
        basis_data%exponents(5) = 0.1441000D+05
        basis_data%s_coef(5) = 0.1038300D-02
        basis_data%exponents(6) = 0.5394000D+04
        basis_data%s_coef(6) = 0.3174700D-02
        basis_data%exponents(7) = 0.2212000D+04
        basis_data%s_coef(7) = 0.8732400D-02
        basis_data%exponents(8) = 0.9681000D+03
        basis_data%s_coef(8) = 0.2238300D-01
        basis_data%exponents(9) = 0.4412000D+03
        basis_data%s_coef(9) = 0.5372730D-01
        basis_data%exponents(10) = 0.2071000D+03
        basis_data%s_coef(10) = 0.1166490D+00
        basis_data%exponents(11) = 0.9980000D+02
        basis_data%s_coef(11) = 0.2159780D+00
        basis_data%exponents(12) = 0.4924000D+02
        basis_data%s_coef(12) = 0.3095660D+00
        basis_data%exponents(13) = 0.2474000D+02
        basis_data%s_coef(13) = 0.2839450D+00
        basis_data%exponents(14) = 0.1247000D+02
        basis_data%s_coef(14) = 0.1222320D+00
        basis_data%exponents(15) = 0.5795000D+01
        basis_data%s_coef(15) = 0.1419520D-01
        basis_data%exponents(16) = 0.2830000D+01
        basis_data%s_coef(16) = 0.3121000D-03
        basis_data%exponents(17) = 0.4465000D+07
        basis_data%s_coef(17) = -0.5000000D-06
        basis_data%exponents(18) = 0.6685000D+06
        basis_data%s_coef(18) = -0.3600000D-05
        basis_data%exponents(19) = 0.1522000D+06
        basis_data%s_coef(19) = -0.1900000D-04
        basis_data%exponents(20) = 0.4330000D+05
        basis_data%s_coef(20) = -0.7910000D-04
        basis_data%exponents(21) = 0.1441000D+05
        basis_data%s_coef(21) = -0.2769000D-03
        basis_data%exponents(22) = 0.5394000D+04
        basis_data%s_coef(22) = -0.8472000D-03
        basis_data%exponents(23) = 0.2212000D+04
        basis_data%s_coef(23) = -0.2347800D-02
        basis_data%exponents(24) = 0.9681000D+03
        basis_data%s_coef(24) = -0.6070500D-02
        basis_data%exponents(25) = 0.4412000D+03
        basis_data%s_coef(25) = -0.1497110D-01
        basis_data%exponents(26) = 0.2071000D+03
        basis_data%s_coef(26) = -0.3397290D-01
        basis_data%exponents(27) = 0.9980000D+02
        basis_data%s_coef(27) = -0.6945840D-01
        basis_data%exponents(28) = 0.4924000D+02
        basis_data%s_coef(28) = -0.1190010D+00
        basis_data%exponents(29) = 0.2474000D+02
        basis_data%s_coef(29) = -0.1536450D+00
        basis_data%exponents(30) = 0.1247000D+02
        basis_data%s_coef(30) = -0.7046840D-01
        basis_data%exponents(31) = 0.5795000D+01
        basis_data%s_coef(31) = 0.2131490D+00
        basis_data%exponents(32) = 0.2830000D+01
        basis_data%s_coef(32) = 0.4915960D+00
        basis_data%exponents(33) = 0.4465000D+07
        basis_data%s_coef(33) = 0.1000000D-06
        basis_data%exponents(34) = 0.6685000D+06
        basis_data%s_coef(34) = 0.9000000D-06
        basis_data%exponents(35) = 0.1522000D+06
        basis_data%s_coef(35) = 0.4900000D-05
        basis_data%exponents(36) = 0.4330000D+05
        basis_data%s_coef(36) = 0.2030000D-04
        basis_data%exponents(37) = 0.1441000D+05
        basis_data%s_coef(37) = 0.7090000D-04
        basis_data%exponents(38) = 0.5394000D+04
        basis_data%s_coef(38) = 0.2172000D-03
        basis_data%exponents(39) = 0.2212000D+04
        basis_data%s_coef(39) = 0.6013000D-03
        basis_data%exponents(40) = 0.9681000D+03
        basis_data%s_coef(40) = 0.1559100D-02
        basis_data%exponents(41) = 0.4412000D+03
        basis_data%s_coef(41) = 0.3844300D-02
        basis_data%exponents(42) = 0.2071000D+03
        basis_data%s_coef(42) = 0.8779700D-02
        basis_data%exponents(43) = 0.9980000D+02
        basis_data%s_coef(43) = 0.1803880D-01
        basis_data%exponents(44) = 0.4924000D+02
        basis_data%s_coef(44) = 0.3152240D-01
        basis_data%exponents(45) = 0.2474000D+02
        basis_data%s_coef(45) = 0.4169050D-01
        basis_data%exponents(46) = 0.1247000D+02
        basis_data%s_coef(46) = 0.2009730D-01
        basis_data%exponents(47) = 0.5795000D+01
        basis_data%s_coef(47) = -0.6674840D-01
        basis_data%exponents(48) = 0.2830000D+01
        basis_data%s_coef(48) = -0.1819060D+00
        basis_data%exponents(49) = 0.1407000D+01
        basis_data%s_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.6995000D+00
        basis_data%s_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.3083000D+00
        basis_data%s_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.1385000D+00
        basis_data%s_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.6145000D-01
        basis_data%s_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.2539000D-01
        basis_data%s_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.3572000D+04
        basis_data%p_coef(55) = 0.5990000D-04
        basis_data%exponents(56) = 0.8460000D+03
        basis_data%p_coef(56) = 0.5296000D-03
        basis_data%exponents(57) = 0.2748000D+03
        basis_data%p_coef(57) = 0.2995800D-02
        basis_data%exponents(58) = 0.1050000D+03
        basis_data%p_coef(58) = 0.1263350D-01
        basis_data%exponents(59) = 0.4435000D+02
        basis_data%p_coef(59) = 0.4190440D-01
        basis_data%exponents(60) = 0.2008000D+02
        basis_data%p_coef(60) = 0.1102590D+00
        basis_data%exponents(61) = 0.9530000D+01
        basis_data%p_coef(61) = 0.2188310D+00
        basis_data%exponents(62) = 0.4634000D+01
        basis_data%p_coef(62) = 0.3178280D+00
        basis_data%exponents(63) = 0.2280000D+01
        basis_data%p_coef(63) = 0.3194250D+00
        basis_data%exponents(64) = 0.3572000D+04
        basis_data%p_coef(64) = -0.1280000D-04
        basis_data%exponents(65) = 0.8460000D+03
        basis_data%p_coef(65) = -0.1126000D-03
        basis_data%exponents(66) = 0.2748000D+03
        basis_data%p_coef(66) = -0.6402000D-03
        basis_data%exponents(67) = 0.1050000D+03
        basis_data%p_coef(67) = -0.2702900D-02
        basis_data%exponents(68) = 0.4435000D+02
        basis_data%p_coef(68) = -0.9078900D-02
        basis_data%exponents(69) = 0.2008000D+02
        basis_data%p_coef(69) = -0.2423480D-01
        basis_data%exponents(70) = 0.9530000D+01
        basis_data%p_coef(70) = -0.4934600D-01
        basis_data%exponents(71) = 0.4634000D+01
        basis_data%p_coef(71) = -0.7258590D-01
        basis_data%exponents(72) = 0.2280000D+01
        basis_data%p_coef(72) = -0.8042580D-01
        basis_data%exponents(73) = 0.1116000D+01
        basis_data%p_coef(73) = 0.1000000D+01
        basis_data%exponents(74) = 0.4991000D+00
        basis_data%p_coef(74) = 0.1000000D+01
        basis_data%exponents(75) = 0.2254000D+00
        basis_data%p_coef(75) = 0.1000000D+01
        basis_data%exponents(76) = 0.1001000D+00
        basis_data%p_coef(76) = 0.1000000D+01
        basis_data%exponents(77) = 0.4332000D-01
        basis_data%p_coef(77) = 0.1000000D+01
        basis_data%exponents(78) = 0.1694000D-01
        basis_data%p_coef(78) = 0.1000000D+01
        basis_data%exponents(79) = 0.3238600D+01
        basis_data%d_coef(79) = 0.1000000D+01
        basis_data%exponents(80) = 0.1376700D+01
        basis_data%d_coef(80) = 0.1000000D+01
        basis_data%exponents(81) = 0.5853000D+00
        basis_data%d_coef(81) = 0.1000000D+01
        basis_data%exponents(82) = 0.2488000D+00
        basis_data%d_coef(82) = 0.1000000D+01
        basis_data%exponents(83) = 0.1058000D+00
        basis_data%d_coef(83) = 0.1000000D+01
        basis_data%exponents(84) = 0.4139000D-01
        basis_data%d_coef(84) = 0.1000000D+01
        basis_data%exponents(85) = 0.1351000D+01
        basis_data%f_coef(85) = 0.1000000D+01
        basis_data%exponents(86) = 0.6600000D+00
        basis_data%f_coef(86) = 0.1000000D+01
        basis_data%exponents(87) = 0.3225000D+00
        basis_data%f_coef(87) = 0.1000000D+01
        basis_data%exponents(88) = 0.1575000D+00
        basis_data%f_coef(88) = 0.1000000D+01
        basis_data%exponents(89) = 0.6884000D-01
        basis_data%f_coef(89) = 0.1000000D+01
        basis_data%exponents(90) = 0.8528000D+00
        basis_data%g_coef(90) = 0.1000000D+01
        basis_data%exponents(91) = 0.4631000D+00
        basis_data%g_coef(91) = 0.1000000D+01
        basis_data%exponents(92) = 0.2515000D+00
        basis_data%g_coef(92) = 0.1000000D+01
        basis_data%exponents(93) = 0.1164000D+00
        basis_data%g_coef(93) = 0.1000000D+01
        basis_data%exponents(94) = 0.8557000D+00
        basis_data%h_coef(94) = 0.1000000D+01
        basis_data%exponents(95) = 0.4231000D+00
        basis_data%h_coef(95) = 0.1000000D+01
        basis_data%exponents(96) = 0.2351000D+00
        basis_data%h_coef(96) = 0.1000000D+01
        basis_data%exponents(97) = 0.6946000D+00
        basis_data%i_coef(97) = 0.1000000D+01
        basis_data%exponents(98) = 0.4271000D+00
        basis_data%i_coef(98) = 0.1000000D+01
        ilast = 98

      case(PHOSPHORUS)
        basis_data%exponents(1) = 0.5384000D+07
        basis_data%s_coef(1) = 0.1600000D-05
        basis_data%exponents(2) = 0.8062000D+06
        basis_data%s_coef(2) = 0.1280000D-04
        basis_data%exponents(3) = 0.1836000D+06
        basis_data%s_coef(3) = 0.6720000D-04
        basis_data%exponents(4) = 0.5225000D+05
        basis_data%s_coef(4) = 0.2797000D-03
        basis_data%exponents(5) = 0.1739000D+05
        basis_data%s_coef(5) = 0.9767000D-03
        basis_data%exponents(6) = 0.6523000D+04
        basis_data%s_coef(6) = 0.2968400D-02
        basis_data%exponents(7) = 0.2687000D+04
        basis_data%s_coef(7) = 0.8124000D-02
        basis_data%exponents(8) = 0.1178000D+04
        basis_data%s_coef(8) = 0.2092000D-01
        basis_data%exponents(9) = 0.5362000D+03
        basis_data%s_coef(9) = 0.5055900D-01
        basis_data%exponents(10) = 0.2515000D+03
        basis_data%s_coef(10) = 0.1104790D+00
        basis_data%exponents(11) = 0.1213000D+03
        basis_data%s_coef(11) = 0.2069570D+00
        basis_data%exponents(12) = 0.5988000D+02
        basis_data%s_coef(12) = 0.3047370D+00
        basis_data%exponents(13) = 0.3005000D+02
        basis_data%s_coef(13) = 0.2929520D+00
        basis_data%exponents(14) = 0.1512000D+02
        basis_data%s_coef(14) = 0.1355610D+00
        basis_data%exponents(15) = 0.7010000D+01
        basis_data%s_coef(15) = 0.1732080D-01
        basis_data%exponents(16) = 0.3441000D+01
        basis_data%s_coef(16) = -0.3520000D-04
        basis_data%exponents(17) = 0.5384000D+07
        basis_data%s_coef(17) = -0.4000000D-06
        basis_data%exponents(18) = 0.8062000D+06
        basis_data%s_coef(18) = -0.3500000D-05
        basis_data%exponents(19) = 0.1836000D+06
        basis_data%s_coef(19) = -0.1830000D-04
        basis_data%exponents(20) = 0.5225000D+05
        basis_data%s_coef(20) = -0.7590000D-04
        basis_data%exponents(21) = 0.1739000D+05
        basis_data%s_coef(21) = -0.2657000D-03
        basis_data%exponents(22) = 0.6523000D+04
        basis_data%s_coef(22) = -0.8080000D-03
        basis_data%exponents(23) = 0.2687000D+04
        basis_data%s_coef(23) = -0.2227300D-02
        basis_data%exponents(24) = 0.1178000D+04
        basis_data%s_coef(24) = -0.5783300D-02
        basis_data%exponents(25) = 0.5362000D+03
        basis_data%s_coef(25) = -0.1434380D-01
        basis_data%exponents(26) = 0.2515000D+03
        basis_data%s_coef(26) = -0.3270610D-01
        basis_data%exponents(27) = 0.1213000D+03
        basis_data%s_coef(27) = -0.6737160D-01
        basis_data%exponents(28) = 0.5988000D+02
        basis_data%s_coef(28) = -0.1176470D+00
        basis_data%exponents(29) = 0.3005000D+02
        basis_data%s_coef(29) = -0.1572800D+00
        basis_data%exponents(30) = 0.1512000D+02
        basis_data%s_coef(30) = -0.8385440D-01
        basis_data%exponents(31) = 0.7010000D+01
        basis_data%s_coef(31) = 0.1997180D+00
        basis_data%exponents(32) = 0.3441000D+01
        basis_data%s_coef(32) = 0.4986050D+00
        basis_data%exponents(33) = 0.5384000D+07
        basis_data%s_coef(33) = 0.1000000D-06
        basis_data%exponents(34) = 0.8062000D+06
        basis_data%s_coef(34) = 0.1000000D-05
        basis_data%exponents(35) = 0.1836000D+06
        basis_data%s_coef(35) = 0.5000000D-05
        basis_data%exponents(36) = 0.5225000D+05
        basis_data%s_coef(36) = 0.2090000D-04
        basis_data%exponents(37) = 0.1739000D+05
        basis_data%s_coef(37) = 0.7300000D-04
        basis_data%exponents(38) = 0.6523000D+04
        basis_data%s_coef(38) = 0.2221000D-03
        basis_data%exponents(39) = 0.2687000D+04
        basis_data%s_coef(39) = 0.6122000D-03
        basis_data%exponents(40) = 0.1178000D+04
        basis_data%s_coef(40) = 0.1591800D-02
        basis_data%exponents(41) = 0.5362000D+03
        basis_data%s_coef(41) = 0.3953400D-02
        basis_data%exponents(42) = 0.2515000D+03
        basis_data%s_coef(42) = 0.9057200D-02
        basis_data%exponents(43) = 0.1213000D+03
        basis_data%s_coef(43) = 0.1879090D-01
        basis_data%exponents(44) = 0.5988000D+02
        basis_data%s_coef(44) = 0.3338310D-01
        basis_data%exponents(45) = 0.3005000D+02
        basis_data%s_coef(45) = 0.4594840D-01
        basis_data%exponents(46) = 0.1512000D+02
        basis_data%s_coef(46) = 0.2552400D-01
        basis_data%exponents(47) = 0.7010000D+01
        basis_data%s_coef(47) = -0.6694960D-01
        basis_data%exponents(48) = 0.3441000D+01
        basis_data%s_coef(48) = -0.2036450D+00
        basis_data%exponents(49) = 0.1712000D+01
        basis_data%s_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.8337000D+00
        basis_data%s_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.3912000D+00
        basis_data%s_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.1777000D+00
        basis_data%s_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.7939000D-01
        basis_data%s_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.3228000D-01
        basis_data%s_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.4552000D+04
        basis_data%p_coef(55) = 0.5200000D-04
        basis_data%exponents(56) = 0.1078000D+04
        basis_data%p_coef(56) = 0.4604000D-03
        basis_data%exponents(57) = 0.3501000D+03
        basis_data%p_coef(57) = 0.2620800D-02
        basis_data%exponents(58) = 0.1338000D+03
        basis_data%p_coef(58) = 0.1118730D-01
        basis_data%exponents(59) = 0.5652000D+02
        basis_data%p_coef(59) = 0.3782290D-01
        basis_data%exponents(60) = 0.2558000D+02
        basis_data%p_coef(60) = 0.1021160D+00
        basis_data%exponents(61) = 0.1214000D+02
        basis_data%p_coef(61) = 0.2103140D+00
        basis_data%exponents(62) = 0.5902000D+01
        basis_data%p_coef(62) = 0.3173830D+00
        basis_data%exponents(63) = 0.2910000D+01
        basis_data%p_coef(63) = 0.3271650D+00
        basis_data%exponents(64) = 0.4552000D+04
        basis_data%p_coef(64) = -0.1240000D-04
        basis_data%exponents(65) = 0.1078000D+04
        basis_data%p_coef(65) = -0.1094000D-03
        basis_data%exponents(66) = 0.3501000D+03
        basis_data%p_coef(66) = -0.6256000D-03
        basis_data%exponents(67) = 0.1338000D+03
        basis_data%p_coef(67) = -0.2673400D-02
        basis_data%exponents(68) = 0.5652000D+02
        basis_data%p_coef(68) = -0.9155200D-02
        basis_data%exponents(69) = 0.2558000D+02
        basis_data%p_coef(69) = -0.2509930D-01
        basis_data%exponents(70) = 0.1214000D+02
        basis_data%p_coef(70) = -0.5318100D-01
        basis_data%exponents(71) = 0.5902000D+01
        basis_data%p_coef(71) = -0.8158880D-01
        basis_data%exponents(72) = 0.2910000D+01
        basis_data%p_coef(72) = -0.9197250D-01
        basis_data%exponents(73) = 0.1435000D+01
        basis_data%p_coef(73) = 0.1000000D+01
        basis_data%exponents(74) = 0.6570000D+00
        basis_data%p_coef(74) = 0.1000000D+01
        basis_data%exponents(75) = 0.3005000D+00
        basis_data%p_coef(75) = 0.1000000D+01
        basis_data%exponents(76) = 0.1340000D+00
        basis_data%p_coef(76) = 0.1000000D+01
        basis_data%exponents(77) = 0.5783000D-01
        basis_data%p_coef(77) = 0.1000000D+01
        basis_data%exponents(78) = 0.2197000D-01
        basis_data%p_coef(78) = 0.1000000D+01
        basis_data%exponents(79) = 0.4300800D+01
        basis_data%d_coef(79) = 0.1000000D+01
        basis_data%exponents(80) = 0.1834600D+01
        basis_data%d_coef(80) = 0.1000000D+01
        basis_data%exponents(81) = 0.7826000D+00
        basis_data%d_coef(81) = 0.1000000D+01
        basis_data%exponents(82) = 0.3339000D+00
        basis_data%d_coef(82) = 0.1000000D+01
        basis_data%exponents(83) = 0.1424000D+00
        basis_data%d_coef(83) = 0.1000000D+01
        basis_data%exponents(84) = 0.5492000D-01
        basis_data%d_coef(84) = 0.1000000D+01
        basis_data%exponents(85) = 0.1816000D+01
        basis_data%f_coef(85) = 0.1000000D+01
        basis_data%exponents(86) = 0.8806000D+00
        basis_data%f_coef(86) = 0.1000000D+01
        basis_data%exponents(87) = 0.4270000D+00
        basis_data%f_coef(87) = 0.1000000D+01
        basis_data%exponents(88) = 0.2070000D+00
        basis_data%f_coef(88) = 0.1000000D+01
        basis_data%exponents(89) = 0.8710000D-01
        basis_data%f_coef(89) = 0.1000000D+01
        basis_data%exponents(90) = 0.1061600D+01
        basis_data%g_coef(90) = 0.1000000D+01
        basis_data%exponents(91) = 0.5791000D+00
        basis_data%g_coef(91) = 0.1000000D+01
        basis_data%exponents(92) = 0.3159000D+00
        basis_data%g_coef(92) = 0.1000000D+01
        basis_data%exponents(93) = 0.1470000D+00
        basis_data%g_coef(93) = 0.1000000D+01
        basis_data%exponents(94) = 0.1085000D+01
        basis_data%h_coef(94) = 0.1000000D+01
        basis_data%exponents(95) = 0.5277000D+00
        basis_data%h_coef(95) = 0.1000000D+01
        basis_data%exponents(96) = 0.2874000D+00
        basis_data%h_coef(96) = 0.1000000D+01
        basis_data%exponents(97) = 0.8890000D+00
        basis_data%i_coef(97) = 0.1000000D+01
        basis_data%exponents(98) = 0.5151000D+00
        basis_data%i_coef(98) = 0.1000000D+01
        ilast = 98

      case(SULFUR)
        basis_data%exponents(1) = 0.6297000D+07
        basis_data%s_coef(1) = 0.1600000D-05
        basis_data%exponents(2) = 0.9431000D+06
        basis_data%s_coef(2) = 0.1240000D-04
        basis_data%exponents(3) = 0.2149000D+06
        basis_data%s_coef(3) = 0.6490000D-04
        basis_data%exponents(4) = 0.6125000D+05
        basis_data%s_coef(4) = 0.2693000D-03
        basis_data%exponents(5) = 0.2045000D+05
        basis_data%s_coef(5) = 0.9347000D-03
        basis_data%exponents(6) = 0.7719000D+04
        basis_data%s_coef(6) = 0.2808300D-02
        basis_data%exponents(7) = 0.3198000D+04
        basis_data%s_coef(7) = 0.7674000D-02
        basis_data%exponents(8) = 0.1402000D+04
        basis_data%s_coef(8) = 0.1988980D-01
        basis_data%exponents(9) = 0.6372000D+03
        basis_data%s_coef(9) = 0.4825890D-01
        basis_data%exponents(10) = 0.2989000D+03
        basis_data%s_coef(10) = 0.1057570D+00
        basis_data%exponents(11) = 0.1443000D+03
        basis_data%s_coef(11) = 0.2002230D+00
        basis_data%exponents(12) = 0.7121000D+02
        basis_data%s_coef(12) = 0.3007280D+00
        basis_data%exponents(13) = 0.3573000D+02
        basis_data%s_coef(13) = 0.2986880D+00
        basis_data%exponents(14) = 0.1797000D+02
        basis_data%s_coef(14) = 0.1463470D+00
        basis_data%exponents(15) = 0.8341000D+01
        basis_data%s_coef(15) = 0.2011590D-01
        basis_data%exponents(16) = 0.4112000D+01
        basis_data%s_coef(16) = -0.2488000D-03
        basis_data%exponents(17) = 0.6297000D+07
        basis_data%s_coef(17) = -0.4000000D-06
        basis_data%exponents(18) = 0.9431000D+06
        basis_data%s_coef(18) = -0.3400000D-05
        basis_data%exponents(19) = 0.2149000D+06
        basis_data%s_coef(19) = -0.1790000D-04
        basis_data%exponents(20) = 0.6125000D+05
        basis_data%s_coef(20) = -0.7440000D-04
        basis_data%exponents(21) = 0.2045000D+05
        basis_data%s_coef(21) = -0.2587000D-03
        basis_data%exponents(22) = 0.7719000D+04
        basis_data%s_coef(22) = -0.7777000D-03
        basis_data%exponents(23) = 0.3198000D+04
        basis_data%s_coef(23) = -0.2139600D-02
        basis_data%exponents(24) = 0.1402000D+04
        basis_data%s_coef(24) = -0.5590600D-02
        basis_data%exponents(25) = 0.6372000D+03
        basis_data%s_coef(25) = -0.1390760D-01
        basis_data%exponents(26) = 0.2989000D+03
        basis_data%s_coef(26) = -0.3176890D-01
        basis_data%exponents(27) = 0.1443000D+03
        basis_data%s_coef(27) = -0.6593020D-01
        basis_data%exponents(28) = 0.7121000D+02
        basis_data%s_coef(28) = -0.1168320D+00
        basis_data%exponents(29) = 0.3573000D+02
        basis_data%s_coef(29) = -0.1597870D+00
        basis_data%exponents(30) = 0.1797000D+02
        basis_data%s_coef(30) = -0.9453220D-01
        basis_data%exponents(31) = 0.8341000D+01
        basis_data%s_coef(31) = 0.1878280D+00
        basis_data%exponents(32) = 0.4112000D+01
        basis_data%s_coef(32) = 0.5046830D+00
        basis_data%exponents(33) = 0.6297000D+07
        basis_data%s_coef(33) = 0.1000000D-06
        basis_data%exponents(34) = 0.9431000D+06
        basis_data%s_coef(34) = 0.1000000D-05
        basis_data%exponents(35) = 0.2149000D+06
        basis_data%s_coef(35) = 0.5200000D-05
        basis_data%exponents(36) = 0.6125000D+05
        basis_data%s_coef(36) = 0.2160000D-04
        basis_data%exponents(37) = 0.2045000D+05
        basis_data%s_coef(37) = 0.7510000D-04
        basis_data%exponents(38) = 0.7719000D+04
        basis_data%s_coef(38) = 0.2258000D-03
        basis_data%exponents(39) = 0.3198000D+04
        basis_data%s_coef(39) = 0.6217000D-03
        basis_data%exponents(40) = 0.1402000D+04
        basis_data%s_coef(40) = 0.1625100D-02
        basis_data%exponents(41) = 0.6372000D+03
        basis_data%s_coef(41) = 0.4053500D-02
        basis_data%exponents(42) = 0.2989000D+03
        basis_data%s_coef(42) = 0.9290200D-02
        basis_data%exponents(43) = 0.1443000D+03
        basis_data%s_coef(43) = 0.1945610D-01
        basis_data%exponents(44) = 0.7121000D+02
        basis_data%s_coef(44) = 0.3500400D-01
        basis_data%exponents(45) = 0.3573000D+02
        basis_data%s_coef(45) = 0.4948970D-01
        basis_data%exponents(46) = 0.1797000D+02
        basis_data%s_coef(46) = 0.3034430D-01
        basis_data%exponents(47) = 0.8341000D+01
        basis_data%s_coef(47) = -0.6636610D-01
        basis_data%exponents(48) = 0.4112000D+01
        basis_data%s_coef(48) = -0.2231540D+00
        basis_data%exponents(49) = 0.2045000D+01
        basis_data%s_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.9770000D+00
        basis_data%s_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.4766000D+00
        basis_data%s_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.2185000D+00
        basis_data%s_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.9759000D-01
        basis_data%s_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.3893000D-01
        basis_data%s_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.5266000D+04
        basis_data%p_coef(55) = 0.5230000D-04
        basis_data%exponents(56) = 0.1247000D+04
        basis_data%p_coef(56) = 0.4635000D-03
        basis_data%exponents(57) = 0.4050000D+03
        basis_data%p_coef(57) = 0.2641000D-02
        basis_data%exponents(58) = 0.1548000D+03
        basis_data%p_coef(58) = 0.1131690D-01
        basis_data%exponents(59) = 0.6538000D+02
        basis_data%p_coef(59) = 0.3847040D-01
        basis_data%exponents(60) = 0.2959000D+02
        basis_data%p_coef(60) = 0.1043390D+00
        basis_data%exponents(61) = 0.1404000D+02
        basis_data%p_coef(61) = 0.2156840D+00
        basis_data%exponents(62) = 0.6824000D+01
        basis_data%p_coef(62) = 0.3252600D+00
        basis_data%exponents(63) = 0.3369000D+01
        basis_data%p_coef(63) = 0.3261780D+00
        basis_data%exponents(64) = 0.5266000D+04
        basis_data%p_coef(64) = -0.1330000D-04
        basis_data%exponents(65) = 0.1247000D+04
        basis_data%p_coef(65) = -0.1179000D-03
        basis_data%exponents(66) = 0.4050000D+03
        basis_data%p_coef(66) = -0.6759000D-03
        basis_data%exponents(67) = 0.1548000D+03
        basis_data%p_coef(67) = -0.2897300D-02
        basis_data%exponents(68) = 0.6538000D+02
        basis_data%p_coef(68) = -0.9998000D-02
        basis_data%exponents(69) = 0.2959000D+02
        basis_data%p_coef(69) = -0.2754160D-01
        basis_data%exponents(70) = 0.1404000D+02
        basis_data%p_coef(70) = -0.5879430D-01
        basis_data%exponents(71) = 0.6824000D+01
        basis_data%p_coef(71) = -0.9037610D-01
        basis_data%exponents(72) = 0.3369000D+01
        basis_data%p_coef(72) = -0.9998910D-01
        basis_data%exponents(73) = 0.1666000D+01
        basis_data%p_coef(73) = 0.1000000D+01
        basis_data%exponents(74) = 0.7681000D+00
        basis_data%p_coef(74) = 0.1000000D+01
        basis_data%exponents(75) = 0.3504000D+00
        basis_data%p_coef(75) = 0.1000000D+01
        basis_data%exponents(76) = 0.1556000D+00
        basis_data%p_coef(76) = 0.1000000D+01
        basis_data%exponents(77) = 0.6681000D-01
        basis_data%p_coef(77) = 0.1000000D+01
        basis_data%exponents(78) = 0.2648000D-01
        basis_data%p_coef(78) = 0.1000000D+01
        basis_data%exponents(79) = 0.5075500D+01
        basis_data%d_coef(79) = 0.1000000D+01
        basis_data%exponents(80) = 0.2183300D+01
        basis_data%d_coef(80) = 0.1000000D+01
        basis_data%exponents(81) = 0.9392000D+00
        basis_data%d_coef(81) = 0.1000000D+01
        basis_data%exponents(82) = 0.4040000D+00
        basis_data%d_coef(82) = 0.1000000D+01
        basis_data%exponents(83) = 0.1738000D+00
        basis_data%d_coef(83) = 0.1000000D+01
        basis_data%exponents(84) = 0.6986000D-01
        basis_data%d_coef(84) = 0.1000000D+01
        basis_data%exponents(85) = 0.2212000D+01
        basis_data%f_coef(85) = 0.1000000D+01
        basis_data%exponents(86) = 0.1063000D+01
        basis_data%f_coef(86) = 0.1000000D+01
        basis_data%exponents(87) = 0.5100000D+00
        basis_data%f_coef(87) = 0.1000000D+01
        basis_data%exponents(88) = 0.2450000D+00
        basis_data%f_coef(88) = 0.1000000D+01
        basis_data%exponents(89) = 0.1100000D+00
        basis_data%f_coef(89) = 0.1000000D+01
        basis_data%exponents(90) = 0.1347300D+01
        basis_data%g_coef(90) = 0.1000000D+01
        basis_data%exponents(91) = 0.7009000D+00
        basis_data%g_coef(91) = 0.1000000D+01
        basis_data%exponents(92) = 0.3647000D+00
        basis_data%g_coef(92) = 0.1000000D+01
        basis_data%exponents(93) = 0.1799000D+00
        basis_data%g_coef(93) = 0.1000000D+01
        basis_data%exponents(94) = 0.1286100D+01
        basis_data%h_coef(94) = 0.1000000D+01
        basis_data%exponents(95) = 0.6115000D+00
        basis_data%h_coef(95) = 0.1000000D+01
        basis_data%exponents(96) = 0.3465000D+00
        basis_data%h_coef(96) = 0.1000000D+01
        basis_data%exponents(97) = 0.1040900D+01
        basis_data%i_coef(97) = 0.1000000D+01
        basis_data%exponents(98) = 0.6222000D+00
        basis_data%i_coef(98) = 0.1000000D+01
        ilast = 98

      case(CHLORINE)
        basis_data%exponents(1) = 0.7733000D+07
        basis_data%s_coef(1) = 0.1434740D-05
        basis_data%exponents(2) = 0.1158000D+07
        basis_data%s_coef(2) = 0.1114860D-04
        basis_data%exponents(3) = 0.2637000D+06
        basis_data%s_coef(3) = 0.5858650D-04
        basis_data%exponents(4) = 0.7501000D+05
        basis_data%s_coef(4) = 0.2445180D-03
        basis_data%exponents(5) = 0.2489000D+05
        basis_data%s_coef(5) = 0.8582870D-03
        basis_data%exponents(6) = 0.9318000D+04
        basis_data%s_coef(6) = 0.2610190D-02
        basis_data%exponents(7) = 0.3840000D+04
        basis_data%s_coef(7) = 0.7137840D-02
        basis_data%exponents(8) = 0.1684000D+04
        basis_data%s_coef(8) = 0.1845640D-01
        basis_data%exponents(9) = 0.7663000D+03
        basis_data%s_coef(9) = 0.4489440D-01
        basis_data%exponents(10) = 0.3595000D+03
        basis_data%s_coef(10) = 0.9938220D-01
        basis_data%exponents(11) = 0.1734000D+03
        basis_data%s_coef(11) = 0.1907820D+00
        basis_data%exponents(12) = 0.8561000D+02
        basis_data%s_coef(12) = 0.2935650D+00
        basis_data%exponents(13) = 0.4293000D+02
        basis_data%s_coef(13) = 0.3064770D+00
        basis_data%exponents(14) = 0.2155000D+02
        basis_data%s_coef(14) = 0.1622090D+00
        basis_data%exponents(15) = 0.1005000D+02
        basis_data%s_coef(15) = 0.2493830D-01
        basis_data%exponents(16) = 0.4978000D+01
        basis_data%s_coef(16) = -0.5131420D-03
        basis_data%exponents(17) = 0.7733000D+07
        basis_data%s_coef(17) = -0.4022270D-06
        basis_data%exponents(18) = 0.1158000D+07
        basis_data%s_coef(18) = -0.3124480D-05
        basis_data%exponents(19) = 0.2637000D+06
        basis_data%s_coef(19) = -0.1642900D-04
        basis_data%exponents(20) = 0.7501000D+05
        basis_data%s_coef(20) = -0.6854210D-04
        basis_data%exponents(21) = 0.2489000D+05
        basis_data%s_coef(21) = -0.2410010D-03
        basis_data%exponents(22) = 0.9318000D+04
        basis_data%s_coef(22) = -0.7335380D-03
        basis_data%exponents(23) = 0.3840000D+04
        basis_data%s_coef(23) = -0.2018300D-02
        basis_data%exponents(24) = 0.1684000D+04
        basis_data%s_coef(24) = -0.5261070D-02
        basis_data%exponents(25) = 0.7663000D+03
        basis_data%s_coef(25) = -0.1309860D-01
        basis_data%exponents(26) = 0.3595000D+03
        basis_data%s_coef(26) = -0.3017940D-01
        basis_data%exponents(27) = 0.1734000D+03
        basis_data%s_coef(27) = -0.6318880D-01
        basis_data%exponents(28) = 0.8561000D+02
        basis_data%s_coef(28) = -0.1138590D+00
        basis_data%exponents(29) = 0.4293000D+02
        basis_data%s_coef(29) = -0.1612510D+00
        basis_data%exponents(30) = 0.2155000D+02
        basis_data%s_coef(30) = -0.1092340D+00
        basis_data%exponents(31) = 0.1005000D+02
        basis_data%s_coef(31) = 0.1629990D+00
        basis_data%exponents(32) = 0.4978000D+01
        basis_data%s_coef(32) = 0.5014130D+00
        basis_data%exponents(33) = 0.7733000D+07
        basis_data%s_coef(33) = 0.1216960D-06
        basis_data%exponents(34) = 0.1158000D+07
        basis_data%s_coef(34) = 0.9451410D-06
        basis_data%exponents(35) = 0.2637000D+06
        basis_data%s_coef(35) = 0.4971190D-05
        basis_data%exponents(36) = 0.7501000D+05
        basis_data%s_coef(36) = 0.2073230D-04
        basis_data%exponents(37) = 0.2489000D+05
        basis_data%s_coef(37) = 0.7294020D-04
        basis_data%exponents(38) = 0.9318000D+04
        basis_data%s_coef(38) = 0.2218990D-03
        basis_data%exponents(39) = 0.3840000D+04
        basis_data%s_coef(39) = 0.6113550D-03
        basis_data%exponents(40) = 0.1684000D+04
        basis_data%s_coef(40) = 0.1593370D-02
        basis_data%exponents(41) = 0.7663000D+03
        basis_data%s_coef(41) = 0.3980010D-02
        basis_data%exponents(42) = 0.3595000D+03
        basis_data%s_coef(42) = 0.9193750D-02
        basis_data%exponents(43) = 0.1734000D+03
        basis_data%s_coef(43) = 0.1943990D-01
        basis_data%exponents(44) = 0.8561000D+02
        basis_data%s_coef(44) = 0.3551870D-01
        basis_data%exponents(45) = 0.4293000D+02
        basis_data%s_coef(45) = 0.5206740D-01
        basis_data%exponents(46) = 0.2155000D+02
        basis_data%s_coef(46) = 0.3656440D-01
        basis_data%exponents(47) = 0.1005000D+02
        basis_data%s_coef(47) = -0.5975000D-01
        basis_data%exponents(48) = 0.4978000D+01
        basis_data%s_coef(48) = -0.2316410D+00
        basis_data%exponents(49) = 0.2478000D+01
        basis_data%s_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.1180000D+01
        basis_data%s_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.5828000D+00
        basis_data%s_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.2668000D+00
        basis_data%s_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.1183000D+00
        basis_data%s_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.4625000D-01
        basis_data%s_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.6091000D+04
        basis_data%p_coef(55) = 0.5161940D-04
        basis_data%exponents(56) = 0.1442000D+04
        basis_data%p_coef(56) = 0.4584680D-03
        basis_data%exponents(57) = 0.4683000D+03
        basis_data%p_coef(57) = 0.2615090D-02
        basis_data%exponents(58) = 0.1790000D+03
        basis_data%p_coef(58) = 0.1125540D-01
        basis_data%exponents(59) = 0.7561000D+02
        basis_data%p_coef(59) = 0.3845770D-01
        basis_data%exponents(60) = 0.3422000D+02
        basis_data%p_coef(60) = 0.1050810D+00
        basis_data%exponents(61) = 0.1623000D+02
        basis_data%p_coef(61) = 0.2186030D+00
        basis_data%exponents(62) = 0.7890000D+01
        basis_data%p_coef(62) = 0.3308740D+00
        basis_data%exponents(63) = 0.3898000D+01
        basis_data%p_coef(63) = 0.3258790D+00
        basis_data%exponents(64) = 0.6091000D+04
        basis_data%p_coef(64) = -0.1392590D-04
        basis_data%exponents(65) = 0.1442000D+04
        basis_data%p_coef(65) = -0.1233240D-03
        basis_data%exponents(66) = 0.4683000D+03
        basis_data%p_coef(66) = -0.7075510D-03
        basis_data%exponents(67) = 0.1790000D+03
        basis_data%p_coef(67) = -0.3049390D-02
        basis_data%exponents(68) = 0.7561000D+02
        basis_data%p_coef(68) = -0.1057520D-01
        basis_data%exponents(69) = 0.3422000D+02
        basis_data%p_coef(69) = -0.2940940D-01
        basis_data%exponents(70) = 0.1623000D+02
        basis_data%p_coef(70) = -0.6322960D-01
        basis_data%exponents(71) = 0.7890000D+01
        basis_data%p_coef(71) = -0.9818700D-01
        basis_data%exponents(72) = 0.3898000D+01
        basis_data%p_coef(72) = -0.1058700D+00
        basis_data%exponents(73) = 0.1933000D+01
        basis_data%p_coef(73) = 0.1000000D+01
        basis_data%exponents(74) = 0.9057000D+00
        basis_data%p_coef(74) = 0.1000000D+01
        basis_data%exponents(75) = 0.4140000D+00
        basis_data%p_coef(75) = 0.1000000D+01
        basis_data%exponents(76) = 0.1836000D+00
        basis_data%p_coef(76) = 0.1000000D+01
        basis_data%exponents(77) = 0.7859000D-01
        basis_data%p_coef(77) = 0.1000000D+01
        basis_data%exponents(78) = 0.3163000D-01
        basis_data%p_coef(78) = 0.1000000D+01
        basis_data%exponents(79) = 0.6242800D+01
        basis_data%d_coef(79) = 0.1000000D+01
        basis_data%exponents(80) = 0.2690600D+01
        basis_data%d_coef(80) = 0.1000000D+01
        basis_data%exponents(81) = 0.1159600D+01
        basis_data%d_coef(81) = 0.1000000D+01
        basis_data%exponents(82) = 0.4998000D+00
        basis_data%d_coef(82) = 0.1000000D+01
        basis_data%exponents(83) = 0.2154000D+00
        basis_data%d_coef(83) = 0.1000000D+01
        basis_data%exponents(84) = 0.8885000D-01
        basis_data%d_coef(84) = 0.1000000D+01
        basis_data%exponents(85) = 0.2532700D+01
        basis_data%f_coef(85) = 0.1000000D+01
        basis_data%exponents(86) = 0.1240600D+01
        basis_data%f_coef(86) = 0.1000000D+01
        basis_data%exponents(87) = 0.6077000D+00
        basis_data%f_coef(87) = 0.1000000D+01
        basis_data%exponents(88) = 0.2977000D+00
        basis_data%f_coef(88) = 0.1000000D+01
        basis_data%exponents(89) = 0.1465000D+00
        basis_data%f_coef(89) = 0.1000000D+01
        basis_data%exponents(90) = 0.1538800D+01
        basis_data%g_coef(90) = 0.1000000D+01
        basis_data%exponents(91) = 0.8050000D+00
        basis_data%g_coef(91) = 0.1000000D+01
        basis_data%exponents(92) = 0.4212000D+00
        basis_data%g_coef(92) = 0.1000000D+01
        basis_data%exponents(93) = 0.2177000D+00
        basis_data%g_coef(93) = 0.1000000D+01
        basis_data%exponents(94) = 0.1561300D+01
        basis_data%h_coef(94) = 0.1000000D+01
        basis_data%exponents(95) = 0.7397000D+00
        basis_data%h_coef(95) = 0.1000000D+01
        basis_data%exponents(96) = 0.4365000D+00
        basis_data%h_coef(96) = 0.1000000D+01
        basis_data%exponents(97) = 0.1257200D+01
        basis_data%i_coef(97) = 0.1000000D+01
        basis_data%exponents(98) = 0.8074000D+00
        basis_data%i_coef(98) = 0.1000000D+01
        ilast = 98

      case(ARGON)
        basis_data%exponents(1) = 0.9149000D+07
        basis_data%s_coef(1) = 0.1300000D-05
        basis_data%exponents(2) = 0.1370000D+07
        basis_data%s_coef(2) = 0.1040000D-04
        basis_data%exponents(3) = 0.3119000D+06
        basis_data%s_coef(3) = 0.5490000D-04
        basis_data%exponents(4) = 0.8865000D+05
        basis_data%s_coef(4) = 0.2296000D-03
        basis_data%exponents(5) = 0.2933000D+05
        basis_data%s_coef(5) = 0.8103000D-03
        basis_data%exponents(6) = 0.1093000D+05
        basis_data%s_coef(6) = 0.2485300D-02
        basis_data%exponents(7) = 0.4480000D+04
        basis_data%s_coef(7) = 0.6836900D-02
        basis_data%exponents(8) = 0.1962000D+04
        basis_data%s_coef(8) = 0.1761990D-01
        basis_data%exponents(9) = 0.8941000D+03
        basis_data%s_coef(9) = 0.4287520D-01
        basis_data%exponents(10) = 0.4196000D+03
        basis_data%s_coef(10) = 0.9548530D-01
        basis_data%exponents(11) = 0.2023000D+03
        basis_data%s_coef(11) = 0.1850640D+00
        basis_data%exponents(12) = 0.9984000D+02
        basis_data%s_coef(12) = 0.2890420D+00
        basis_data%exponents(13) = 0.5007000D+02
        basis_data%s_coef(13) = 0.3101660D+00
        basis_data%exponents(14) = 0.2514000D+02
        basis_data%s_coef(14) = 0.1721830D+00
        basis_data%exponents(15) = 0.1181000D+02
        basis_data%s_coef(15) = 0.2852270D-01
        basis_data%exponents(16) = 0.5882000D+01
        basis_data%s_coef(16) = -0.5757000D-03
        basis_data%exponents(17) = 0.9149000D+07
        basis_data%s_coef(17) = -0.4000000D-06
        basis_data%exponents(18) = 0.1370000D+07
        basis_data%s_coef(18) = -0.3000000D-05
        basis_data%exponents(19) = 0.3119000D+06
        basis_data%s_coef(19) = -0.1560000D-04
        basis_data%exponents(20) = 0.8865000D+05
        basis_data%s_coef(20) = -0.6520000D-04
        basis_data%exponents(21) = 0.2933000D+05
        basis_data%s_coef(21) = -0.2304000D-03
        basis_data%exponents(22) = 0.1093000D+05
        basis_data%s_coef(22) = -0.7075000D-03
        basis_data%exponents(23) = 0.4480000D+04
        basis_data%s_coef(23) = -0.1957300D-02
        basis_data%exponents(24) = 0.1962000D+04
        basis_data%s_coef(24) = -0.5085600D-02
        basis_data%exponents(25) = 0.8941000D+03
        basis_data%s_coef(25) = -0.1265280D-01
        basis_data%exponents(26) = 0.4196000D+03
        basis_data%s_coef(26) = -0.2930650D-01
        basis_data%exponents(27) = 0.2023000D+03
        basis_data%s_coef(27) = -0.6177120D-01
        basis_data%exponents(28) = 0.9984000D+02
        basis_data%s_coef(28) = -0.1125410D+00
        basis_data%exponents(29) = 0.5007000D+02
        basis_data%s_coef(29) = -0.1622930D+00
        basis_data%exponents(30) = 0.2514000D+02
        basis_data%s_coef(30) = -0.1184120D+00
        basis_data%exponents(31) = 0.1181000D+02
        basis_data%s_coef(31) = 0.1461480D+00
        basis_data%exponents(32) = 0.5882000D+01
        basis_data%s_coef(32) = 0.4977520D+00
        basis_data%exponents(33) = 0.9149000D+07
        basis_data%s_coef(33) = 0.1000000D-06
        basis_data%exponents(34) = 0.1370000D+07
        basis_data%s_coef(34) = 0.9000000D-06
        basis_data%exponents(35) = 0.3119000D+06
        basis_data%s_coef(35) = 0.4900000D-05
        basis_data%exponents(36) = 0.8865000D+05
        basis_data%s_coef(36) = 0.2040000D-04
        basis_data%exponents(37) = 0.2933000D+05
        basis_data%s_coef(37) = 0.7200000D-04
        basis_data%exponents(38) = 0.1093000D+05
        basis_data%s_coef(38) = 0.2210000D-03
        basis_data%exponents(39) = 0.4480000D+04
        basis_data%s_coef(39) = 0.6125000D-03
        basis_data%exponents(40) = 0.1962000D+04
        basis_data%s_coef(40) = 0.1590800D-02
        basis_data%exponents(41) = 0.8941000D+03
        basis_data%s_coef(41) = 0.3972200D-02
        basis_data%exponents(42) = 0.4196000D+03
        basis_data%s_coef(42) = 0.9220400D-02
        basis_data%exponents(43) = 0.2023000D+03
        basis_data%s_coef(43) = 0.1963670D-01
        basis_data%exponents(44) = 0.9984000D+02
        basis_data%s_coef(44) = 0.3625700D-01
        basis_data%exponents(45) = 0.5007000D+02
        basis_data%s_coef(45) = 0.5417250D-01
        basis_data%exponents(46) = 0.2514000D+02
        basis_data%s_coef(46) = 0.4099960D-01
        basis_data%exponents(47) = 0.1181000D+02
        basis_data%s_coef(47) = -0.5517440D-01
        basis_data%exponents(48) = 0.5882000D+01
        basis_data%s_coef(48) = -0.2387540D+00
        basis_data%exponents(49) = 0.2939000D+01
        basis_data%s_coef(49) = 0.1000000D+01
        basis_data%exponents(50) = 0.1405000D+01
        basis_data%s_coef(50) = 0.1000000D+01
        basis_data%exponents(51) = 0.6963000D+00
        basis_data%s_coef(51) = 0.1000000D+01
        basis_data%exponents(52) = 0.3188000D+00
        basis_data%s_coef(52) = 0.1000000D+01
        basis_data%exponents(53) = 0.1410000D+00
        basis_data%s_coef(53) = 0.1000000D+01
        basis_data%exponents(54) = 0.5357000D-01
        basis_data%s_coef(54) = 0.1000000D+01
        basis_data%exponents(55) = 0.7050000D+04
        basis_data%p_coef(55) = 0.5020000D-04
        basis_data%exponents(56) = 0.1669000D+04
        basis_data%p_coef(56) = 0.4454000D-03
        basis_data%exponents(57) = 0.5421000D+03
        basis_data%p_coef(57) = 0.2548000D-02
        basis_data%exponents(58) = 0.2071000D+03
        basis_data%p_coef(58) = 0.1101550D-01
        basis_data%exponents(59) = 0.8752000D+02
        basis_data%p_coef(59) = 0.3784900D-01
        basis_data%exponents(60) = 0.3961000D+02
        basis_data%p_coef(60) = 0.1043550D+00
        basis_data%exponents(61) = 0.1878000D+02
        basis_data%p_coef(61) = 0.2193350D+00
        basis_data%exponents(62) = 0.9130000D+01
        basis_data%p_coef(62) = 0.3346150D+00
        basis_data%exponents(63) = 0.4516000D+01
        basis_data%p_coef(63) = 0.3267710D+00
        basis_data%exponents(64) = 0.7050000D+04
        basis_data%p_coef(64) = -0.1400000D-04
        basis_data%exponents(65) = 0.1669000D+04
        basis_data%p_coef(65) = -0.1243000D-03
        basis_data%exponents(66) = 0.5421000D+03
        basis_data%p_coef(66) = -0.7147000D-03
        basis_data%exponents(67) = 0.2071000D+03
        basis_data%p_coef(67) = -0.3096800D-02
        basis_data%exponents(68) = 0.8752000D+02
        basis_data%p_coef(68) = -0.1079610D-01
        basis_data%exponents(69) = 0.3961000D+02
        basis_data%p_coef(69) = -0.3035360D-01
        basis_data%exponents(70) = 0.1878000D+02
        basis_data%p_coef(70) = -0.6597850D-01
        basis_data%exponents(71) = 0.9130000D+01
        basis_data%p_coef(71) = -0.1038770D+00
        basis_data%exponents(72) = 0.4516000D+01
        basis_data%p_coef(72) = -0.1099560D+00
        basis_data%exponents(73) = 0.2245000D+01
        basis_data%p_coef(73) = 0.1000000D+01
        basis_data%exponents(74) = 0.1065000D+01
        basis_data%p_coef(74) = 0.1000000D+01
        basis_data%exponents(75) = 0.4885000D+00
        basis_data%p_coef(75) = 0.1000000D+01
        basis_data%exponents(76) = 0.2166000D+00
        basis_data%p_coef(76) = 0.1000000D+01
        basis_data%exponents(77) = 0.9255000D-01
        basis_data%p_coef(77) = 0.1000000D+01
        basis_data%exponents(78) = 0.3678000D-01
        basis_data%p_coef(78) = 0.1000000D+01
        basis_data%exponents(79) = 0.7632700D+01
        basis_data%d_coef(79) = 0.1000000D+01
        basis_data%exponents(80) = 0.3287600D+01
        basis_data%d_coef(80) = 0.1000000D+01
        basis_data%exponents(81) = 0.1416000D+01
        basis_data%d_coef(81) = 0.1000000D+01
        basis_data%exponents(82) = 0.6099000D+00
        basis_data%d_coef(82) = 0.1000000D+01
        basis_data%exponents(83) = 0.2627000D+00
        basis_data%d_coef(83) = 0.1000000D+01
        basis_data%exponents(84) = 0.1078000D+00
        basis_data%d_coef(84) = 0.1000000D+01
        basis_data%exponents(85) = 0.3058200D+01
        basis_data%f_coef(85) = 0.1000000D+01
        basis_data%exponents(86) = 0.1529200D+01
        basis_data%f_coef(86) = 0.1000000D+01
        basis_data%exponents(87) = 0.7647000D+00
        basis_data%f_coef(87) = 0.1000000D+01
        basis_data%exponents(88) = 0.3824000D+00
        basis_data%f_coef(88) = 0.1000000D+01
        basis_data%exponents(89) = 0.1830000D+00
        basis_data%f_coef(89) = 0.1000000D+01
        basis_data%exponents(90) = 0.1845000D+01
        basis_data%g_coef(90) = 0.1000000D+01
        basis_data%exponents(91) = 0.9657000D+00
        basis_data%g_coef(91) = 0.1000000D+01
        basis_data%exponents(92) = 0.5055000D+00
        basis_data%g_coef(92) = 0.1000000D+01
        basis_data%exponents(93) = 0.2555000D+00
        basis_data%g_coef(93) = 0.1000000D+01
        basis_data%exponents(94) = 0.1874300D+01
        basis_data%h_coef(94) = 0.1000000D+01
        basis_data%exponents(95) = 0.8871000D+00
        basis_data%h_coef(95) = 0.1000000D+01
        basis_data%exponents(96) = 0.5265000D+00
        basis_data%h_coef(96) = 0.1000000D+01
        basis_data%exponents(97) = 0.1506600D+01
        basis_data%i_coef(97) = 0.1000000D+01
        basis_data%exponents(98) = 0.9926000D+00
        basis_data%i_coef(98) = 0.1000000D+01
        ilast = 98

      case(POTASSIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element POTASSIUM'
        ilast = -1
        return

      case(CALCIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element CALCIUM'
        ilast = -1
        return

      case(SCANDIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element SCANDIUM'
        ilast = -1
        return

      case(TITANIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TITANIUM'
        ilast = -1
        return

      case(VANADIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element VANADIUM'
        ilast = -1
        return

      case(CHROMIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element CHROMIUM'
        ilast = -1
        return

      case(MANGANESE)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element MANGANESE'
        ilast = -1
        return

      case(IRON)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element IRON'
        ilast = -1
        return

      case(COBALT)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element COBALT'
        ilast = -1
        return

      case(NICKEL)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element NICKEL'
        ilast = -1
        return

      case(COPPER)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element COPPER'
        ilast = -1
        return

      case(ZINC)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element ZINC'
        ilast = -1
        return

      case(GALLIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element GALLIUM'
        ilast = -1
        return

      case(GERMANIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element GERMANIUM'
        ilast = -1
        return

      case(ARSENIC)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element ARSENIC'
        ilast = -1
        return

      case(SELENIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element SELENIUM'
        ilast = -1
        return

      case(BROMINE)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element BROMINE'
        ilast = -1
        return

      case(KRYPTON)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element KRYPTON'
        ilast = -1
        return

      case(RUBIDIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element RUBIDIUM'
        ilast = -1
        return

      case(STRONTIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element STRONTIUM'
        ilast = -1
        return

      case(YTTRIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element YTTRIUM'
        ilast = -1
        return

      case(ZIRCONIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element ZIRCONIUM'
        ilast = -1
        return

      case(NIOBIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element NIOBIUM'
        ilast = -1
        return

      case(MOLYBDENUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element MOLYBDENUM'
        ilast = -1
        return

      case(TECHNETIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TECHNETIUM'
        ilast = -1
        return

      case(RUTHENIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element RUTHENIUM'
        ilast = -1
        return

      case(RHODIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element RHODIUM'
        ilast = -1
        return

      case(PALLADIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element PALLADIUM'
        ilast = -1
        return

      case(SILVER)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element SILVER'
        ilast = -1
        return

      case(CADMIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element CADMIUM'
        ilast = -1
        return

      case(INDIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element INDIUM'
        ilast = -1
        return

      case(TIN)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TIN'
        ilast = -1
        return

      case(ANTIMONY)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element ANTIMONY'
        ilast = -1
        return

      case(TELLURIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TELLURIUM'
        ilast = -1
        return

      case(IODINE)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element IODINE'
        ilast = -1
        return

      case(XENON)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element XENON'
        ilast = -1
        return

      case(CESIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element CESIUM'
        ilast = -1
        return

      case(BARIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element BARIUM'
        ilast = -1
        return

      case(LANTHANUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element LANTHANUM'
        ilast = -1
        return

      case(CERIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element CERIUM'
        ilast = -1
        return

      case(PRASEODYMIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element PRASEODYMIUM'
        ilast = -1
        return

      case(NEODYMIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element NEODYMIUM'
        ilast = -1
        return

      case(PROMETHIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element PROMETHIUM'
        ilast = -1
        return

      case(SAMARIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element SAMARIUM'
        ilast = -1
        return

      case(EUROPIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element EUROPIUM'
        ilast = -1
        return

      case(GADOLINIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element GADOLINIUM'
        ilast = -1
        return

      case(TERBIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TERBIUM'
        ilast = -1
        return

      case(DYSPROSIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element DYSPROSIUM'
        ilast = -1
        return

      case(HOLMIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element HOLMIUM'
        ilast = -1
        return

      case(ERBIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element ERBIUM'
        ilast = -1
        return

      case(THULIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element THULIUM'
        ilast = -1
        return

      case(YTTERBIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element YTTERBIUM'
        ilast = -1
        return

      case(LUTETIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element LUTETIUM'
        ilast = -1
        return

      case(HAFNIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element HAFNIUM'
        ilast = -1
        return

      case(TANTALUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TANTALUM'
        ilast = -1
        return

      case(TUNGSTEN)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element TUNGSTEN'
        ilast = -1
        return

      case(RHENIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element RHENIUM'
        ilast = -1
        return

      case(OSMIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element OSMIUM'
        ilast = -1
        return

      case(IRIDIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element IRIDIUM'
        ilast = -1
        return

      case(PLATINUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element PLATINUM'
        ilast = -1
        return

      case(GOLD)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element GOLD'
        ilast = -1
        return

      case(MERCURY)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element MERCURY'
        ilast = -1
        return

      case(THALLIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element THALLIUM'
        ilast = -1
        return

      case(LEAD)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element LEAD'
        ilast = -1
        return

      case(BISMUTH)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element BISMUTH'
        ilast = -1
        return

      case(POLONIUM)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element POLONIUM'
        ilast = -1
        return

      case(ASTATINE)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element ASTATINE'
        ilast = -1
        return

      case(RADON)
        if(maswrk) write(iw,*) 'ERROR: aug-cc-pv6z basis not available for element RADON'
        ilast = -1
        return

      case default
        if(maswrk) write(iw,*) 'ERROR: Element not supported in basis', element_number
        ilast = -1
        return
    end select

  end subroutine get_basis_aug_cc_pv6z

end submodule basis_driver_aug_cc_pv6z