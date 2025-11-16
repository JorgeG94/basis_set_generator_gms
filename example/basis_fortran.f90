subroutine get_ccn_dk_first_period_basis(exponents,s_coef,p_coef,d_coef,f_coef,g_coef,h_coef,element_number,n_zeta,ilast)
  use periodic_table, only: H, HE
  use basis_types, only: n_zeta_to_basis, PVDZ, PVTZ, PVQZ, PV5Z
  !use comm_iofile, only: iw
  !use comm_par, only: maswrk
  !use prec, only: dp
  use iso_fortran_env, only: real64
  implicit none
  integer, intent(in) :: element_number,n_zeta
  integer, intent(inout) :: ilast
  real(kind=real64), intent(inout) :: exponents(310),s_coef(310),p_coef(310),d_coef(310),&
                                 f_coef(310),g_coef(310),h_coef(310)
  integer :: basis_type
  integer :: iw
  logical :: maswrk
  basis_type = n_zeta_to_basis(n_zeta)
  maswrk = .true.
  iw = 1
  select case (element_number)

    case(H)
      select case (basis_type)
         case(PVDZ)
           exponents(1) = 0.1301000D+02
           s_coef(1) = 0.1969770D-01
           exponents(2) = 0.1962000D+01
           s_coef(2) = 0.1379911D+00
           exponents(3) = 0.4446000D+00
           s_coef(3) = 0.4781418D+00
           exponents(4) = 0.1220000D+00
           s_coef(4) = 0.1000000D+01
           exponents(5) = 0.7270000D+00
           p_coef(5) = 0.1000000D+01
           ilast = 5
         case(PVTZ)
           exponents(1) = 0.3387000D+02
           s_coef(1) = 0.6077300D-02
           exponents(2) = 0.5095000D+01
           s_coef(2) = 0.4531760D-01
           exponents(3) = 0.1159000D+01
           s_coef(3) = 0.2028364D+00
           exponents(4) = 0.3258000D+00
           s_coef(4) = 0.1000000D+01
           exponents(5) = 0.1027000D+00
           s_coef(5) = 0.1000000D+01
           exponents(6) = 0.1407000D+01
           p_coef(6) = 0.1000000D+01
           exponents(7) = 0.3880000D+00
           p_coef(7) = 0.1000000D+01
           exponents(8) = 0.1057000D+01
           d_coef(8) = 0.1000000D+01
           ilast = 8
         case(PVQZ)
           exponents(1) = 0.8264000D+02
           s_coef(1) = 0.2013100D-02
           exponents(2) = 0.1241000D+02
           s_coef(2) = 0.1534990D-01
           exponents(3) = 0.2824000D+01
           s_coef(3) = 0.7559200D-01
           exponents(4) = 0.7977000D+00
           s_coef(4) = 0.1000000D+01
           exponents(5) = 0.2581000D+00
           s_coef(5) = 0.1000000D+01
           exponents(6) = 0.8989000D-01
           s_coef(6) = 0.1000000D+01
           exponents(7) = 0.2292000D+01
           p_coef(7) = 0.1000000D+01
           exponents(8) = 0.8380000D+00
           p_coef(8) = 0.1000000D+01
           exponents(9) = 0.2920000D+00
           p_coef(9) = 0.1000000D+01
           exponents(10) = 0.2062000D+01
           d_coef(10) = 0.1000000D+01
           exponents(11) = 0.6620000D+00
           d_coef(11) = 0.1000000D+01
           exponents(12) = 0.1397000D+01
           f_coef(12) = 0.1000000D+01
           ilast = 12
         case(PV5Z)
           exponents(1) = 0.4020000D+03
           s_coef(1) = 0.2836000D-03
           exponents(2) = 0.6024000D+02
           s_coef(2) = 0.2169200D-02
           exponents(3) = 0.1373000D+02
           s_coef(3) = 0.1120820D-01
           exponents(4) = 0.3905000D+01
           s_coef(4) = 0.4488540D-01
           exponents(5) = 0.1283000D+01
           s_coef(5) = 0.1000000D+01
           exponents(6) = 0.4655000D+00
           s_coef(6) = 0.1000000D+01
           exponents(7) = 0.1811000D+00
           s_coef(7) = 0.1000000D+01
           exponents(8) = 0.7279000D-01
           s_coef(8) = 0.1000000D+01
           exponents(9) = 0.4516000D+01
           p_coef(9) = 0.1000000D+01
           exponents(10) = 0.1712000D+01
           p_coef(10) = 0.1000000D+01
           exponents(11) = 0.6490000D+00
           p_coef(11) = 0.1000000D+01
           exponents(12) = 0.2460000D+00
           p_coef(12) = 0.1000000D+01
           exponents(13) = 0.2950000D+01
           d_coef(13) = 0.1000000D+01
           exponents(14) = 0.1206000D+01
           d_coef(14) = 0.1000000D+01
           exponents(15) = 0.4930000D+00
           d_coef(15) = 0.1000000D+01
           exponents(16) = 0.2506000D+01
           f_coef(16) = 0.1000000D+01
           exponents(17) = 0.8750000D+00
           f_coef(17) = 0.1000000D+01
           exponents(18) = 0.2358000D+01
           g_coef(18) = 0.1000000D+01
           ilast = 18
      case default
         if(maswrk) write(iw,9999)
         !call abrt
      end select 
      return

    case(HE)
      select case (basis_type)
         case(PVDZ)
           exponents(1) = 0.3836000D+02
           s_coef(1) = 0.2385450D-01
           exponents(2) = 0.5770000D+01
           s_coef(2) = 0.1549249D+00
           exponents(3) = 0.1240000D+01
           s_coef(3) = 0.4699567D+00
           exponents(4) = 0.2976000D+00
           s_coef(4) = 0.1000000D+01
           exponents(5) = 0.1275000D+01
           p_coef(5) = 0.1000000D+01
           ilast = 5
         case(PVTZ)
           exponents(1) = 0.2340000D+03
           s_coef(1) = 0.2612700D-02
           exponents(2) = 0.3516000D+02
           s_coef(2) = 0.1955880D-01
           exponents(3) = 0.7989000D+01
           s_coef(3) = 0.9103160D-01
           exponents(4) = 0.2212000D+01
           s_coef(4) = 0.2720643D+00
           exponents(5) = 0.6669000D+00
           s_coef(5) = 0.1000000D+01
           exponents(6) = 0.2089000D+00
           s_coef(6) = 0.1000000D+01
           exponents(7) = 0.3044000D+01
           p_coef(7) = 0.1000000D+01
           exponents(8) = 0.7580000D+00
           p_coef(8) = 0.1000000D+01
           exponents(9) = 0.1965000D+01
           d_coef(9) = 0.1000000D+01
           ilast = 9
         case(PVQZ)
           exponents(1) = 0.5285000D+03
           s_coef(1) = 0.9592000D-03
           exponents(2) = 0.7931000D+02
           s_coef(2) = 0.7232900D-02
           exponents(3) = 0.1805000D+02
           s_coef(3) = 0.3600600D-01
           exponents(4) = 0.5085000D+01
           s_coef(4) = 0.1278065D+00
           exponents(5) = 0.1609000D+01
           s_coef(5) = 0.1000000D+01
           exponents(6) = 0.5363000D+00
           s_coef(6) = 0.1000000D+01
           exponents(7) = 0.1833000D+00
           s_coef(7) = 0.1000000D+01
           exponents(8) = 0.5994000D+01
           p_coef(8) = 0.1000000D+01
           exponents(9) = 0.1745000D+01
           p_coef(9) = 0.1000000D+01
           exponents(10) = 0.5600000D+00
           p_coef(10) = 0.1000000D+01
           exponents(11) = 0.4299000D+01
           d_coef(11) = 0.1000000D+01
           exponents(12) = 0.1223000D+01
           d_coef(12) = 0.1000000D+01
           exponents(13) = 0.2680000D+01
           f_coef(13) = 0.1000000D+01
           ilast = 13
         case(PV5Z)
           exponents(1) = 0.1145000D+04
           s_coef(1) = 0.3739000D-03
           exponents(2) = 0.1717000D+03
           s_coef(2) = 0.2785500D-02
           exponents(3) = 0.3907000D+02
           s_coef(3) = 0.1427480D-01
           exponents(4) = 0.1104000D+02
           s_coef(4) = 0.5559360D-01
           exponents(5) = 0.3566000D+01
           s_coef(5) = 0.1000000D+01
           exponents(6) = 0.1240000D+01
           s_coef(6) = 0.1000000D+01
           exponents(7) = 0.4473000D+00
           s_coef(7) = 0.1000000D+01
           exponents(8) = 0.1640000D+00
           s_coef(8) = 0.1000000D+01
           exponents(9) = 0.1015300D+02
           p_coef(9) = 0.1000000D+01
           exponents(10) = 0.3627000D+01
           p_coef(10) = 0.1000000D+01
           exponents(11) = 0.1296000D+01
           p_coef(11) = 0.1000000D+01
           exponents(12) = 0.4630000D+00
           p_coef(12) = 0.1000000D+01
           exponents(13) = 0.7666000D+01
           d_coef(13) = 0.1000000D+01
           exponents(14) = 0.2647000D+01
           d_coef(14) = 0.1000000D+01
           exponents(15) = 0.9140000D+00
           d_coef(15) = 0.1000000D+01
           exponents(16) = 0.5411000D+01
           f_coef(16) = 0.1000000D+01
           exponents(17) = 0.1707000D+01
           f_coef(17) = 0.1000000D+01
           exponents(18) = 0.3430000D+01
           g_coef(18) = 0.1000000D+01
           ilast = 18
      case default
         if(maswrk) write(iw,9999)
         !call abrt
      end select 
      return

      case default
        if(maswrk) write(iw,9998)
        !call abrt
      end select
      return
 9999 format(/1X,'ERROR: DK CORRELATION CONSISTENT BASIS',&
           ' SETS ARE ONLY AVAILABLE FOR DZ-5Z')
 9998 format(/1X,'ERROR: Non first-period element in DK basis subroutine')

end subroutine get_ccn_dk_first_period_basis