submodule (basis_pople_631) basis_pople_631_6_31plusgstar
  implicit none

contains

  module subroutine get_pople_631_basis_6_31plusgstar(basis_data, element_number, ilast)
    type(basis_set_type), intent(out) :: basis_data
    integer, intent(in) :: element_number
    integer, intent(out) :: ilast
    integer :: iw
    logical :: maswrk
    maswrk = .true.
    iw = 6
    ilast = 0

    select case (element_number)

      case(H)
        basis_data%exponents(1) = 0.1873114D+02
        basis_data%s_coef(1) = 0.3349460D-01
        basis_data%exponents(2) = 0.2825394D+01
        basis_data%s_coef(2) = 0.2347269D+00
        basis_data%exponents(3) = 0.6401217D+00
        basis_data%s_coef(3) = 0.8137573D+00
        basis_data%exponents(4) = 0.1612778D+00
        basis_data%s_coef(4) = 0.1000000D+01
        ilast = 4

      case(HE)
        basis_data%exponents(1) = 0.3842163D+02
        basis_data%s_coef(1) = 0.4013974D-01
        basis_data%exponents(2) = 0.5778030D+01
        basis_data%s_coef(2) = 0.2612461D+00
        basis_data%exponents(3) = 0.1241774D+01
        basis_data%s_coef(3) = 0.7931846D+00
        basis_data%exponents(4) = 0.2979640D+00
        basis_data%s_coef(4) = 0.1000000D+01
        ilast = 4

      case(LI)
        basis_data%exponents(1) = 0.6424189D+03
        basis_data%s_coef(1) = 0.2142608D-02
        basis_data%exponents(2) = 0.9679851D+02
        basis_data%s_coef(2) = 0.1620887D-01
        basis_data%exponents(3) = 0.2209112D+02
        basis_data%s_coef(3) = 0.7731557D-01
        basis_data%exponents(4) = 0.6201070D+01
        basis_data%s_coef(4) = 0.2457860D+00
        basis_data%exponents(5) = 0.1935118D+01
        basis_data%s_coef(5) = 0.4701890D+00
        basis_data%exponents(6) = 0.6367358D+00
        basis_data%s_coef(6) = 0.3454708D+00
        basis_data%exponents(7) = 0.2324918D+01
        basis_data%s_coef(7) = -0.3509175D-01
        basis_data%exponents(8) = 0.6324304D+00
        basis_data%s_coef(8) = -0.1912328D+00
        basis_data%exponents(9) = 0.7905343D-01
        basis_data%s_coef(9) = 0.1083988D+01
        basis_data%exponents(10) = 0.2324918D+01
        basis_data%s_coef(10) = 0.8941508D-02
        basis_data%exponents(11) = 0.6324304D+00
        basis_data%s_coef(11) = 0.1410095D+00
        basis_data%exponents(12) = 0.7905343D-01
        basis_data%s_coef(12) = 0.9453637D+00
        basis_data%exponents(13) = 0.3596197D-01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.3596197D-01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.7400000D-02
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.7400000D-02
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.2000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(BE)
        basis_data%exponents(1) = 0.1264586D+04
        basis_data%s_coef(1) = 0.1944758D-02
        basis_data%exponents(2) = 0.1899368D+03
        basis_data%s_coef(2) = 0.1483505D-01
        basis_data%exponents(3) = 0.4315909D+02
        basis_data%s_coef(3) = 0.7209055D-01
        basis_data%exponents(4) = 0.1209866D+02
        basis_data%s_coef(4) = 0.2371542D+00
        basis_data%exponents(5) = 0.3806323D+01
        basis_data%s_coef(5) = 0.4691986D+00
        basis_data%exponents(6) = 0.1272890D+01
        basis_data%s_coef(6) = 0.3565202D+00
        basis_data%exponents(7) = 0.3196463D+01
        basis_data%s_coef(7) = -0.1126487D+00
        basis_data%exponents(8) = 0.7478133D+00
        basis_data%s_coef(8) = -0.2295064D+00
        basis_data%exponents(9) = 0.2199663D+00
        basis_data%s_coef(9) = 0.1186917D+01
        basis_data%exponents(10) = 0.3196463D+01
        basis_data%s_coef(10) = 0.5598020D-01
        basis_data%exponents(11) = 0.7478133D+00
        basis_data%s_coef(11) = 0.2615506D+00
        basis_data%exponents(12) = 0.2199663D+00
        basis_data%s_coef(12) = 0.7939723D+00
        basis_data%exponents(13) = 0.8230990D-01
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.8230990D-01
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.2070000D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.2070000D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.4000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(B)
        basis_data%exponents(1) = 0.2068882D+04
        basis_data%s_coef(1) = 0.1866275D-02
        basis_data%exponents(2) = 0.3106496D+03
        basis_data%s_coef(2) = 0.1425148D-01
        basis_data%exponents(3) = 0.7068303D+02
        basis_data%s_coef(3) = 0.6955162D-01
        basis_data%exponents(4) = 0.1986108D+02
        basis_data%s_coef(4) = 0.2325729D+00
        basis_data%exponents(5) = 0.6299305D+01
        basis_data%s_coef(5) = 0.4670787D+00
        basis_data%exponents(6) = 0.2127027D+01
        basis_data%s_coef(6) = 0.3634314D+00
        basis_data%exponents(7) = 0.4727971D+01
        basis_data%s_coef(7) = -0.1303938D+00
        basis_data%exponents(8) = 0.1190338D+01
        basis_data%s_coef(8) = -0.1307889D+00
        basis_data%exponents(9) = 0.3594117D+00
        basis_data%s_coef(9) = 0.1130944D+01
        basis_data%exponents(10) = 0.4727971D+01
        basis_data%s_coef(10) = 0.7459758D-01
        basis_data%exponents(11) = 0.1190338D+01
        basis_data%s_coef(11) = 0.3078467D+00
        basis_data%exponents(12) = 0.3594117D+00
        basis_data%s_coef(12) = 0.7434568D+00
        basis_data%exponents(13) = 0.1267513D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1267513D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.3150000D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.3150000D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.6000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(C)
        basis_data%exponents(1) = 0.3047525D+04
        basis_data%s_coef(1) = 0.1834737D-02
        basis_data%exponents(2) = 0.4573695D+03
        basis_data%s_coef(2) = 0.1403732D-01
        basis_data%exponents(3) = 0.1039487D+03
        basis_data%s_coef(3) = 0.6884262D-01
        basis_data%exponents(4) = 0.2921016D+02
        basis_data%s_coef(4) = 0.2321844D+00
        basis_data%exponents(5) = 0.9286663D+01
        basis_data%s_coef(5) = 0.4679413D+00
        basis_data%exponents(6) = 0.3163927D+01
        basis_data%s_coef(6) = 0.3623120D+00
        basis_data%exponents(7) = 0.7868272D+01
        basis_data%s_coef(7) = -0.1193324D+00
        basis_data%exponents(8) = 0.1881288D+01
        basis_data%s_coef(8) = -0.1608542D+00
        basis_data%exponents(9) = 0.5442493D+00
        basis_data%s_coef(9) = 0.1143456D+01
        basis_data%exponents(10) = 0.7868272D+01
        basis_data%s_coef(10) = 0.6899907D-01
        basis_data%exponents(11) = 0.1881288D+01
        basis_data%s_coef(11) = 0.3164240D+00
        basis_data%exponents(12) = 0.5442493D+00
        basis_data%s_coef(12) = 0.7443083D+00
        basis_data%exponents(13) = 0.1687145D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.1687145D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.4380000D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.4380000D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.8000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(N)
        basis_data%exponents(1) = 0.4173512D+04
        basis_data%s_coef(1) = 0.1834772D-02
        basis_data%exponents(2) = 0.6274579D+03
        basis_data%s_coef(2) = 0.1399463D-01
        basis_data%exponents(3) = 0.1429021D+03
        basis_data%s_coef(3) = 0.6858655D-01
        basis_data%exponents(4) = 0.4023433D+02
        basis_data%s_coef(4) = 0.2322409D+00
        basis_data%exponents(5) = 0.1282021D+02
        basis_data%s_coef(5) = 0.4690700D+00
        basis_data%exponents(6) = 0.4390437D+01
        basis_data%s_coef(6) = 0.3604552D+00
        basis_data%exponents(7) = 0.1162636D+02
        basis_data%s_coef(7) = -0.1149612D+00
        basis_data%exponents(8) = 0.2716280D+01
        basis_data%s_coef(8) = -0.1691175D+00
        basis_data%exponents(9) = 0.7722184D+00
        basis_data%s_coef(9) = 0.1145852D+01
        basis_data%exponents(10) = 0.1162636D+02
        basis_data%s_coef(10) = 0.6757974D-01
        basis_data%exponents(11) = 0.2716280D+01
        basis_data%s_coef(11) = 0.3239073D+00
        basis_data%exponents(12) = 0.7722184D+00
        basis_data%s_coef(12) = 0.7408951D+00
        basis_data%exponents(13) = 0.2120315D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.2120315D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.6390000D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.6390000D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.8000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(O)
        basis_data%exponents(1) = 0.5484672D+04
        basis_data%s_coef(1) = 0.1831074D-02
        basis_data%exponents(2) = 0.8252349D+03
        basis_data%s_coef(2) = 0.1395017D-01
        basis_data%exponents(3) = 0.1880470D+03
        basis_data%s_coef(3) = 0.6844508D-01
        basis_data%exponents(4) = 0.5296450D+02
        basis_data%s_coef(4) = 0.2327143D+00
        basis_data%exponents(5) = 0.1689757D+02
        basis_data%s_coef(5) = 0.4701929D+00
        basis_data%exponents(6) = 0.5799635D+01
        basis_data%s_coef(6) = 0.3585209D+00
        basis_data%exponents(7) = 0.1553962D+02
        basis_data%s_coef(7) = -0.1107776D+00
        basis_data%exponents(8) = 0.3599934D+01
        basis_data%s_coef(8) = -0.1480263D+00
        basis_data%exponents(9) = 0.1013762D+01
        basis_data%s_coef(9) = 0.1130767D+01
        basis_data%exponents(10) = 0.1553962D+02
        basis_data%s_coef(10) = 0.7087427D-01
        basis_data%exponents(11) = 0.3599934D+01
        basis_data%s_coef(11) = 0.3397528D+00
        basis_data%exponents(12) = 0.1013762D+01
        basis_data%s_coef(12) = 0.7271586D+00
        basis_data%exponents(13) = 0.2700058D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.2700058D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.8450000D-01
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.8450000D-01
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.8000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(F)
        basis_data%exponents(1) = 0.7001713D+04
        basis_data%s_coef(1) = 0.1819617D-02
        basis_data%exponents(2) = 0.1051366D+04
        basis_data%s_coef(2) = 0.1391608D-01
        basis_data%exponents(3) = 0.2392857D+03
        basis_data%s_coef(3) = 0.6840533D-01
        basis_data%exponents(4) = 0.6739745D+02
        basis_data%s_coef(4) = 0.2331858D+00
        basis_data%exponents(5) = 0.2151996D+02
        basis_data%s_coef(5) = 0.4712674D+00
        basis_data%exponents(6) = 0.7403101D+01
        basis_data%s_coef(6) = 0.3566185D+00
        basis_data%exponents(7) = 0.2084795D+02
        basis_data%s_coef(7) = -0.1085070D+00
        basis_data%exponents(8) = 0.4808308D+01
        basis_data%s_coef(8) = -0.1464517D+00
        basis_data%exponents(9) = 0.1344070D+01
        basis_data%s_coef(9) = 0.1128689D+01
        basis_data%exponents(10) = 0.2084795D+02
        basis_data%s_coef(10) = 0.7162872D-01
        basis_data%exponents(11) = 0.4808308D+01
        basis_data%s_coef(11) = 0.3459121D+00
        basis_data%exponents(12) = 0.1344070D+01
        basis_data%s_coef(12) = 0.7224700D+00
        basis_data%exponents(13) = 0.3581514D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.3581514D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.1076000D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.1076000D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.8000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(NE)
        basis_data%exponents(1) = 0.8425852D+04
        basis_data%s_coef(1) = 0.1884348D-02
        basis_data%exponents(2) = 0.1268519D+04
        basis_data%s_coef(2) = 0.1433690D-01
        basis_data%exponents(3) = 0.2896214D+03
        basis_data%s_coef(3) = 0.7010962D-01
        basis_data%exponents(4) = 0.8185900D+02
        basis_data%s_coef(4) = 0.2373733D+00
        basis_data%exponents(5) = 0.2625151D+02
        basis_data%s_coef(5) = 0.4730071D+00
        basis_data%exponents(6) = 0.9094720D+01
        basis_data%s_coef(6) = 0.3484012D+00
        basis_data%exponents(7) = 0.2653213D+02
        basis_data%s_coef(7) = -0.1071183D+00
        basis_data%exponents(8) = 0.6101755D+01
        basis_data%s_coef(8) = -0.1461638D+00
        basis_data%exponents(9) = 0.1696272D+01
        basis_data%s_coef(9) = 0.1127773D+01
        basis_data%exponents(10) = 0.2653213D+02
        basis_data%s_coef(10) = 0.7190959D-01
        basis_data%exponents(11) = 0.6101755D+01
        basis_data%s_coef(11) = 0.3495134D+00
        basis_data%exponents(12) = 0.1696272D+01
        basis_data%s_coef(12) = 0.7199405D+00
        basis_data%exponents(13) = 0.4458187D+00
        basis_data%s_coef(13) = 0.1000000D+01
        basis_data%exponents(14) = 0.4458187D+00
        basis_data%s_coef(14) = 0.1000000D+01
        basis_data%exponents(15) = 0.1300000D+00
        basis_data%s_coef(15) = 0.1000000D+01
        basis_data%exponents(16) = 0.1300000D+00
        basis_data%s_coef(16) = 0.1000000D+01
        basis_data%exponents(17) = 0.8000000D+00
        basis_data%d_coef(17) = 0.1000000D+01
        ilast = 17

      case(NA)
        basis_data%exponents(1) = 0.9993200D+04
        basis_data%s_coef(1) = 0.1937659D-02
        basis_data%exponents(2) = 0.1499890D+04
        basis_data%s_coef(2) = 0.1480699D-01
        basis_data%exponents(3) = 0.3419510D+03
        basis_data%s_coef(3) = 0.7270547D-01
        basis_data%exponents(4) = 0.9467960D+02
        basis_data%s_coef(4) = 0.2526289D+00
        basis_data%exponents(5) = 0.2973450D+02
        basis_data%s_coef(5) = 0.4932418D+00
        basis_data%exponents(6) = 0.1000630D+02
        basis_data%s_coef(6) = 0.3131689D+00
        basis_data%exponents(7) = 0.1509630D+03
        basis_data%s_coef(7) = -0.3542084D-02
        basis_data%exponents(8) = 0.3558780D+02
        basis_data%s_coef(8) = -0.4395884D-01
        basis_data%exponents(9) = 0.1116830D+02
        basis_data%s_coef(9) = -0.1097521D+00
        basis_data%exponents(10) = 0.3902010D+01
        basis_data%s_coef(10) = 0.1873982D+00
        basis_data%exponents(11) = 0.1381770D+01
        basis_data%s_coef(11) = 0.6466996D+00
        basis_data%exponents(12) = 0.4663820D+00
        basis_data%s_coef(12) = 0.3060583D+00
        basis_data%exponents(13) = 0.1509630D+03
        basis_data%s_coef(13) = 0.5001660D-02
        basis_data%exponents(14) = 0.3558780D+02
        basis_data%s_coef(14) = 0.3551090D-01
        basis_data%exponents(15) = 0.1116830D+02
        basis_data%s_coef(15) = 0.1428250D+00
        basis_data%exponents(16) = 0.3902010D+01
        basis_data%s_coef(16) = 0.3386200D+00
        basis_data%exponents(17) = 0.1381770D+01
        basis_data%s_coef(17) = 0.4515790D+00
        basis_data%exponents(18) = 0.4663820D+00
        basis_data%s_coef(18) = 0.2732710D+00
        basis_data%exponents(19) = 0.4979660D+00
        basis_data%s_coef(19) = -0.2485032D+00
        basis_data%exponents(20) = 0.8435290D-01
        basis_data%s_coef(20) = -0.1317041D+00
        basis_data%exponents(21) = 0.6663500D-01
        basis_data%s_coef(21) = 0.1233521D+01
        basis_data%exponents(22) = 0.4979660D+00
        basis_data%s_coef(22) = -0.2302250D-01
        basis_data%exponents(23) = 0.8435290D-01
        basis_data%s_coef(23) = 0.9503590D+00
        basis_data%exponents(24) = 0.6663500D-01
        basis_data%s_coef(24) = 0.5985790D-01
        basis_data%exponents(25) = 0.2595440D-01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.2595440D-01
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.7600000D-02
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.7600000D-02
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.1750000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(MG)
        basis_data%exponents(1) = 0.1172280D+05
        basis_data%s_coef(1) = 0.1977829D-02
        basis_data%exponents(2) = 0.1759930D+04
        basis_data%s_coef(2) = 0.1511399D-01
        basis_data%exponents(3) = 0.4008460D+03
        basis_data%s_coef(3) = 0.7391077D-01
        basis_data%exponents(4) = 0.1128070D+03
        basis_data%s_coef(4) = 0.2491909D+00
        basis_data%exponents(5) = 0.3599970D+02
        basis_data%s_coef(5) = 0.4879278D+00
        basis_data%exponents(6) = 0.1218280D+02
        basis_data%s_coef(6) = 0.3196619D+00
        basis_data%exponents(7) = 0.1891800D+03
        basis_data%s_coef(7) = -0.3237171D-02
        basis_data%exponents(8) = 0.4521190D+02
        basis_data%s_coef(8) = -0.4100791D-01
        basis_data%exponents(9) = 0.1435630D+02
        basis_data%s_coef(9) = -0.1126000D+00
        basis_data%exponents(10) = 0.5138860D+01
        basis_data%s_coef(10) = 0.1486330D+00
        basis_data%exponents(11) = 0.1906520D+01
        basis_data%s_coef(11) = 0.6164971D+00
        basis_data%exponents(12) = 0.7058870D+00
        basis_data%s_coef(12) = 0.3648290D+00
        basis_data%exponents(13) = 0.1891800D+03
        basis_data%s_coef(13) = 0.4928130D-02
        basis_data%exponents(14) = 0.4521190D+02
        basis_data%s_coef(14) = 0.3498880D-01
        basis_data%exponents(15) = 0.1435630D+02
        basis_data%s_coef(15) = 0.1407250D+00
        basis_data%exponents(16) = 0.5138860D+01
        basis_data%s_coef(16) = 0.3336420D+00
        basis_data%exponents(17) = 0.1906520D+01
        basis_data%s_coef(17) = 0.4449400D+00
        basis_data%exponents(18) = 0.7058870D+00
        basis_data%s_coef(18) = 0.2692540D+00
        basis_data%exponents(19) = 0.9293400D+00
        basis_data%s_coef(19) = -0.2122909D+00
        basis_data%exponents(20) = 0.2690350D+00
        basis_data%s_coef(20) = -0.1079855D+00
        basis_data%exponents(21) = 0.1173790D+00
        basis_data%s_coef(21) = 0.1175845D+01
        basis_data%exponents(22) = 0.9293400D+00
        basis_data%s_coef(22) = -0.2241918D-01
        basis_data%exponents(23) = 0.2690350D+00
        basis_data%s_coef(23) = 0.1922708D+00
        basis_data%exponents(24) = 0.1173790D+00
        basis_data%s_coef(24) = 0.8461803D+00
        basis_data%exponents(25) = 0.4210610D-01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.4210610D-01
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.1460000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.1460000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.1750000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(AL)
        basis_data%exponents(1) = 0.1398310D+05
        basis_data%s_coef(1) = 0.1942670D-02
        basis_data%exponents(2) = 0.2098750D+04
        basis_data%s_coef(2) = 0.1485990D-01
        basis_data%exponents(3) = 0.4777050D+03
        basis_data%s_coef(3) = 0.7284940D-01
        basis_data%exponents(4) = 0.1343600D+03
        basis_data%s_coef(4) = 0.2468300D+00
        basis_data%exponents(5) = 0.4287090D+02
        basis_data%s_coef(5) = 0.4872580D+00
        basis_data%exponents(6) = 0.1451890D+02
        basis_data%s_coef(6) = 0.3234960D+00
        basis_data%exponents(7) = 0.2396680D+03
        basis_data%s_coef(7) = -0.2926190D-02
        basis_data%exponents(8) = 0.5744190D+02
        basis_data%s_coef(8) = -0.3740830D-01
        basis_data%exponents(9) = 0.1828590D+02
        basis_data%s_coef(9) = -0.1144870D+00
        basis_data%exponents(10) = 0.6599140D+01
        basis_data%s_coef(10) = 0.1156350D+00
        basis_data%exponents(11) = 0.2490490D+01
        basis_data%s_coef(11) = 0.6125950D+00
        basis_data%exponents(12) = 0.9445450D+00
        basis_data%s_coef(12) = 0.3937990D+00
        basis_data%exponents(13) = 0.2396680D+03
        basis_data%s_coef(13) = 0.4602846D-02
        basis_data%exponents(14) = 0.5744190D+02
        basis_data%s_coef(14) = 0.3319897D-01
        basis_data%exponents(15) = 0.1828590D+02
        basis_data%s_coef(15) = 0.1362819D+00
        basis_data%exponents(16) = 0.6599140D+01
        basis_data%s_coef(16) = 0.3304757D+00
        basis_data%exponents(17) = 0.2490490D+01
        basis_data%s_coef(17) = 0.4491456D+00
        basis_data%exponents(18) = 0.9445450D+00
        basis_data%s_coef(18) = 0.2657037D+00
        basis_data%exponents(19) = 0.1277900D+01
        basis_data%s_coef(19) = -0.2276069D+00
        basis_data%exponents(20) = 0.3975900D+00
        basis_data%s_coef(20) = 0.1445836D-02
        basis_data%exponents(21) = 0.1600950D+00
        basis_data%s_coef(21) = 0.1092794D+01
        basis_data%exponents(22) = 0.1277900D+01
        basis_data%s_coef(22) = -0.1751260D-01
        basis_data%exponents(23) = 0.3975900D+00
        basis_data%s_coef(23) = 0.2445330D+00
        basis_data%exponents(24) = 0.1600950D+00
        basis_data%s_coef(24) = 0.8049341D+00
        basis_data%exponents(25) = 0.5565770D-01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.5565770D-01
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.3180000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.3180000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.3250000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(SI)
        basis_data%exponents(1) = 0.1611590D+05
        basis_data%s_coef(1) = 0.1959480D-02
        basis_data%exponents(2) = 0.2425580D+04
        basis_data%s_coef(2) = 0.1492880D-01
        basis_data%exponents(3) = 0.5538670D+03
        basis_data%s_coef(3) = 0.7284781D-01
        basis_data%exponents(4) = 0.1563400D+03
        basis_data%s_coef(4) = 0.2461300D+00
        basis_data%exponents(5) = 0.5006830D+02
        basis_data%s_coef(5) = 0.4859140D+00
        basis_data%exponents(6) = 0.1701780D+02
        basis_data%s_coef(6) = 0.3250020D+00
        basis_data%exponents(7) = 0.2927180D+03
        basis_data%s_coef(7) = -0.2780941D-02
        basis_data%exponents(8) = 0.6987310D+02
        basis_data%s_coef(8) = -0.3571462D-01
        basis_data%exponents(9) = 0.2233630D+02
        basis_data%s_coef(9) = -0.1149851D+00
        basis_data%exponents(10) = 0.8150390D+01
        basis_data%s_coef(10) = 0.9356345D-01
        basis_data%exponents(11) = 0.3134580D+01
        basis_data%s_coef(11) = 0.6030173D+00
        basis_data%exponents(12) = 0.1225430D+01
        basis_data%s_coef(12) = 0.4189592D+00
        basis_data%exponents(13) = 0.2927180D+03
        basis_data%s_coef(13) = 0.4438264D-02
        basis_data%exponents(14) = 0.6987310D+02
        basis_data%s_coef(14) = 0.3266793D-01
        basis_data%exponents(15) = 0.2233630D+02
        basis_data%s_coef(15) = 0.1347211D+00
        basis_data%exponents(16) = 0.8150390D+01
        basis_data%s_coef(16) = 0.3286783D+00
        basis_data%exponents(17) = 0.3134580D+01
        basis_data%s_coef(17) = 0.4496405D+00
        basis_data%exponents(18) = 0.1225430D+01
        basis_data%s_coef(18) = 0.2613723D+00
        basis_data%exponents(19) = 0.1727380D+01
        basis_data%s_coef(19) = -0.2446310D+00
        basis_data%exponents(20) = 0.5729220D+00
        basis_data%s_coef(20) = 0.4315738D-02
        basis_data%exponents(21) = 0.2221920D+00
        basis_data%s_coef(21) = 0.1098184D+01
        basis_data%exponents(22) = 0.1727380D+01
        basis_data%s_coef(22) = -0.1779511D-01
        basis_data%exponents(23) = 0.5729220D+00
        basis_data%s_coef(23) = 0.2535391D+00
        basis_data%exponents(24) = 0.2221920D+00
        basis_data%s_coef(24) = 0.8006693D+00
        basis_data%exponents(25) = 0.7783690D-01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.7783690D-01
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.3310000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.3310000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.4500000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(P)
        basis_data%exponents(1) = 0.1941330D+05
        basis_data%s_coef(1) = 0.1851599D-02
        basis_data%exponents(2) = 0.2909420D+04
        basis_data%s_coef(2) = 0.1420619D-01
        basis_data%exponents(3) = 0.6613640D+03
        basis_data%s_coef(3) = 0.6999946D-01
        basis_data%exponents(4) = 0.1857590D+03
        basis_data%s_coef(4) = 0.2400789D+00
        basis_data%exponents(5) = 0.5919430D+02
        basis_data%s_coef(5) = 0.4847617D+00
        basis_data%exponents(6) = 0.2003100D+02
        basis_data%s_coef(6) = 0.3351998D+00
        basis_data%exponents(7) = 0.3394780D+03
        basis_data%s_coef(7) = -0.2782170D-02
        basis_data%exponents(8) = 0.8101010D+02
        basis_data%s_coef(8) = -0.3604990D-01
        basis_data%exponents(9) = 0.2587800D+02
        basis_data%s_coef(9) = -0.1166310D+00
        basis_data%exponents(10) = 0.9452210D+01
        basis_data%s_coef(10) = 0.9683280D-01
        basis_data%exponents(11) = 0.3665660D+01
        basis_data%s_coef(11) = 0.6144180D+00
        basis_data%exponents(12) = 0.1467460D+01
        basis_data%s_coef(12) = 0.4037980D+00
        basis_data%exponents(13) = 0.3394780D+03
        basis_data%s_coef(13) = 0.4564616D-02
        basis_data%exponents(14) = 0.8101010D+02
        basis_data%s_coef(14) = 0.3369357D-01
        basis_data%exponents(15) = 0.2587800D+02
        basis_data%s_coef(15) = 0.1397549D+00
        basis_data%exponents(16) = 0.9452210D+01
        basis_data%s_coef(16) = 0.3393617D+00
        basis_data%exponents(17) = 0.3665660D+01
        basis_data%s_coef(17) = 0.4509206D+00
        basis_data%exponents(18) = 0.1467460D+01
        basis_data%s_coef(18) = 0.2385858D+00
        basis_data%exponents(19) = 0.2156230D+01
        basis_data%s_coef(19) = -0.2529241D+00
        basis_data%exponents(20) = 0.7489970D+00
        basis_data%s_coef(20) = 0.3285185D-01
        basis_data%exponents(21) = 0.2831450D+00
        basis_data%s_coef(21) = 0.1081255D+01
        basis_data%exponents(22) = 0.2156230D+01
        basis_data%s_coef(22) = -0.1776531D-01
        basis_data%exponents(23) = 0.7489970D+00
        basis_data%s_coef(23) = 0.2740582D+00
        basis_data%exponents(24) = 0.2831450D+00
        basis_data%s_coef(24) = 0.7854216D+00
        basis_data%exponents(25) = 0.9983170D-01
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.9983170D-01
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.3480000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.3480000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.5500000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(S)
        basis_data%exponents(1) = 0.2191710D+05
        basis_data%s_coef(1) = 0.1869241D-02
        basis_data%exponents(2) = 0.3301490D+04
        basis_data%s_coef(2) = 0.1423031D-01
        basis_data%exponents(3) = 0.7541460D+03
        basis_data%s_coef(3) = 0.6969623D-01
        basis_data%exponents(4) = 0.2127110D+03
        basis_data%s_coef(4) = 0.2384871D+00
        basis_data%exponents(5) = 0.6798960D+02
        basis_data%s_coef(5) = 0.4833072D+00
        basis_data%exponents(6) = 0.2305150D+02
        basis_data%s_coef(6) = 0.3380742D+00
        basis_data%exponents(7) = 0.4237350D+03
        basis_data%s_coef(7) = -0.2376771D-02
        basis_data%exponents(8) = 0.1007100D+03
        basis_data%s_coef(8) = -0.3169301D-01
        basis_data%exponents(9) = 0.3215990D+02
        basis_data%s_coef(9) = -0.1133170D+00
        basis_data%exponents(10) = 0.1180790D+02
        basis_data%s_coef(10) = 0.5609001D-01
        basis_data%exponents(11) = 0.4631100D+01
        basis_data%s_coef(11) = 0.5922551D+00
        basis_data%exponents(12) = 0.1870250D+01
        basis_data%s_coef(12) = 0.4550061D+00
        basis_data%exponents(13) = 0.4237350D+03
        basis_data%s_coef(13) = 0.4061010D-02
        basis_data%exponents(14) = 0.1007100D+03
        basis_data%s_coef(14) = 0.3068130D-01
        basis_data%exponents(15) = 0.3215990D+02
        basis_data%s_coef(15) = 0.1304520D+00
        basis_data%exponents(16) = 0.1180790D+02
        basis_data%s_coef(16) = 0.3272050D+00
        basis_data%exponents(17) = 0.4631100D+01
        basis_data%s_coef(17) = 0.4528510D+00
        basis_data%exponents(18) = 0.1870250D+01
        basis_data%s_coef(18) = 0.2560420D+00
        basis_data%exponents(19) = 0.2615840D+01
        basis_data%s_coef(19) = -0.2503731D+00
        basis_data%exponents(20) = 0.9221670D+00
        basis_data%s_coef(20) = 0.6695676D-01
        basis_data%exponents(21) = 0.3412870D+00
        basis_data%s_coef(21) = 0.1054506D+01
        basis_data%exponents(22) = 0.2615840D+01
        basis_data%s_coef(22) = -0.1451049D-01
        basis_data%exponents(23) = 0.9221670D+00
        basis_data%s_coef(23) = 0.3102628D+00
        basis_data%exponents(24) = 0.3412870D+00
        basis_data%s_coef(24) = 0.7544825D+00
        basis_data%exponents(25) = 0.1171670D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1171670D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.4050000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.4050000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.6500000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(CL)
        basis_data%exponents(1) = 0.2518010D+05
        basis_data%s_coef(1) = 0.1832960D-02
        basis_data%exponents(2) = 0.3780350D+04
        basis_data%s_coef(2) = 0.1403420D-01
        basis_data%exponents(3) = 0.8604740D+03
        basis_data%s_coef(3) = 0.6909739D-01
        basis_data%exponents(4) = 0.2421450D+03
        basis_data%s_coef(4) = 0.2374520D+00
        basis_data%exponents(5) = 0.7733490D+02
        basis_data%s_coef(5) = 0.4830340D+00
        basis_data%exponents(6) = 0.2624700D+02
        basis_data%s_coef(6) = 0.3398560D+00
        basis_data%exponents(7) = 0.4917650D+03
        basis_data%s_coef(7) = -0.2297391D-02
        basis_data%exponents(8) = 0.1169840D+03
        basis_data%s_coef(8) = -0.3071372D-01
        basis_data%exponents(9) = 0.3741530D+02
        basis_data%s_coef(9) = -0.1125281D+00
        basis_data%exponents(10) = 0.1378340D+02
        basis_data%s_coef(10) = 0.4501633D-01
        basis_data%exponents(11) = 0.5452150D+01
        basis_data%s_coef(11) = 0.5893534D+00
        basis_data%exponents(12) = 0.2225880D+01
        basis_data%s_coef(12) = 0.4652063D+00
        basis_data%exponents(13) = 0.4917650D+03
        basis_data%s_coef(13) = 0.3989401D-02
        basis_data%exponents(14) = 0.1169840D+03
        basis_data%s_coef(14) = 0.3031771D-01
        basis_data%exponents(15) = 0.3741530D+02
        basis_data%s_coef(15) = 0.1298800D+00
        basis_data%exponents(16) = 0.1378340D+02
        basis_data%s_coef(16) = 0.3279511D+00
        basis_data%exponents(17) = 0.5452150D+01
        basis_data%s_coef(17) = 0.4535271D+00
        basis_data%exponents(18) = 0.2225880D+01
        basis_data%s_coef(18) = 0.2521541D+00
        basis_data%exponents(19) = 0.3186490D+01
        basis_data%s_coef(19) = -0.2518280D+00
        basis_data%exponents(20) = 0.1144270D+01
        basis_data%s_coef(20) = 0.6158925D-01
        basis_data%exponents(21) = 0.4203770D+00
        basis_data%s_coef(21) = 0.1060184D+01
        basis_data%exponents(22) = 0.3186490D+01
        basis_data%s_coef(22) = -0.1429931D-01
        basis_data%exponents(23) = 0.1144270D+01
        basis_data%s_coef(23) = 0.3235723D+00
        basis_data%exponents(24) = 0.4203770D+00
        basis_data%s_coef(24) = 0.7435078D+00
        basis_data%exponents(25) = 0.1426570D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1426570D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.4830000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.4830000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.7500000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(AR)
        basis_data%exponents(1) = 0.2834830D+05
        basis_data%s_coef(1) = 0.1825260D-02
        basis_data%exponents(2) = 0.4257620D+04
        basis_data%s_coef(2) = 0.1396860D-01
        basis_data%exponents(3) = 0.9698570D+03
        basis_data%s_coef(3) = 0.6870731D-01
        basis_data%exponents(4) = 0.2732630D+03
        basis_data%s_coef(4) = 0.2362040D+00
        basis_data%exponents(5) = 0.8736950D+02
        basis_data%s_coef(5) = 0.4822140D+00
        basis_data%exponents(6) = 0.2968670D+02
        basis_data%s_coef(6) = 0.3420430D+00
        basis_data%exponents(7) = 0.5758910D+03
        basis_data%s_coef(7) = -0.2159721D-02
        basis_data%exponents(8) = 0.1368160D+03
        basis_data%s_coef(8) = -0.2907751D-01
        basis_data%exponents(9) = 0.4380980D+02
        basis_data%s_coef(9) = -0.1108270D+00
        basis_data%exponents(10) = 0.1620940D+02
        basis_data%s_coef(10) = 0.2769991D-01
        basis_data%exponents(11) = 0.6460840D+01
        basis_data%s_coef(11) = 0.5776132D+00
        basis_data%exponents(12) = 0.2651140D+01
        basis_data%s_coef(12) = 0.4886882D+00
        basis_data%exponents(13) = 0.5758910D+03
        basis_data%s_coef(13) = 0.3806650D-02
        basis_data%exponents(14) = 0.1368160D+03
        basis_data%s_coef(14) = 0.2923050D-01
        basis_data%exponents(15) = 0.4380980D+02
        basis_data%s_coef(15) = 0.1264670D+00
        basis_data%exponents(16) = 0.1620940D+02
        basis_data%s_coef(16) = 0.3235100D+00
        basis_data%exponents(17) = 0.6460840D+01
        basis_data%s_coef(17) = 0.4548960D+00
        basis_data%exponents(18) = 0.2651140D+01
        basis_data%s_coef(18) = 0.2566300D+00
        basis_data%exponents(19) = 0.3860280D+01
        basis_data%s_coef(19) = -0.2555930D+00
        basis_data%exponents(20) = 0.1413730D+01
        basis_data%s_coef(20) = 0.3780674D-01
        basis_data%exponents(21) = 0.5166460D+00
        basis_data%s_coef(21) = 0.1080564D+01
        basis_data%exponents(22) = 0.3860280D+01
        basis_data%s_coef(22) = -0.1591969D-01
        basis_data%exponents(23) = 0.1413730D+01
        basis_data%s_coef(23) = 0.3246458D+00
        basis_data%exponents(24) = 0.5166460D+00
        basis_data%s_coef(24) = 0.7439895D+00
        basis_data%exponents(25) = 0.1738880D+00
        basis_data%s_coef(25) = 0.1000000D+01
        basis_data%exponents(26) = 0.1738880D+00
        basis_data%s_coef(26) = 0.1000000D+01
        basis_data%exponents(27) = 0.6000000D-01
        basis_data%s_coef(27) = 0.1000000D+01
        basis_data%exponents(28) = 0.6000000D-01
        basis_data%s_coef(28) = 0.1000000D+01
        basis_data%exponents(29) = 0.8500000D+00
        basis_data%d_coef(29) = 0.1000000D+01
        ilast = 29

      case(K)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element K'
        ilast = -1
        return

      case(CA)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element CA'
        ilast = -1
        return

      case(SC)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element SC'
        ilast = -1
        return

      case(TI)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element TI'
        ilast = -1
        return

      case(V)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element V'
        ilast = -1
        return

      case(CR)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element CR'
        ilast = -1
        return

      case(MN)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element MN'
        ilast = -1
        return

      case(FE)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element FE'
        ilast = -1
        return

      case(CO)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element CO'
        ilast = -1
        return

      case(NI)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element NI'
        ilast = -1
        return

      case(CU)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element CU'
        ilast = -1
        return

      case(ZN)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element ZN'
        ilast = -1
        return

      case(GA)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element GA'
        ilast = -1
        return

      case(GE)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element GE'
        ilast = -1
        return

      case(AS)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element AS'
        ilast = -1
        return

      case(SE)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element SE'
        ilast = -1
        return

      case(BR)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element BR'
        ilast = -1
        return

      case(KR)
        if(maswrk) write(iw,*) 'ERROR: 6-31+G* basis not available for element KR'
        ilast = -1
        return

      case default
        if(maswrk) write(iw,*) 'ERROR: Element not supported in this basis subroutine'
        ilast = -1
        return
    end select

  end subroutine get_pople_631_basis_6_31plusgstar

end submodule basis_pople_631_6_31plusgstar