program test_basis
  use basis_ccn_dk
  use basis_set_data, only: basis_set_type
  use periodic_table, only: H, HE, C, O
  implicit none
  
  type(basis_set_type) :: basis
  integer :: ilast
  
  write(*,*) '======================================'
  write(*,*) 'Testing Basis Set Module'
  write(*,*) '======================================'
  write(*,*)
  
  ! Test H with DZ
  write(*,*) 'Testing H with cc-pvdz-dk (n_zeta=2):'
  call get_ccn_dk_basis(basis, H, 2, ilast)
  if (ilast > 0) then
    write(*,'(a,i0,a)') '  Success! ilast = ', ilast, ' primitives'
    write(*,'(a,f12.6)') '  First exponent: ', basis%exponents(1)
  else
    write(*,*) '  ERROR!'
  end if
  write(*,*)
  
  ! Test He with TZ
  write(*,*) 'Testing He with cc-pvtz-dk (n_zeta=3):'
  call get_ccn_dk_basis(basis, HE, 3, ilast)
  if (ilast > 0) then
    write(*,'(a,i0,a)') '  Success! ilast = ', ilast, ' primitives'
    write(*,'(a,f12.6)') '  First exponent: ', basis%exponents(1)
  else
    write(*,*) '  ERROR!'
  end if
  write(*,*)
  
  ! Test C with QZ
  write(*,*) 'Testing C with cc-pvqz-dk (n_zeta=4):'
  call get_ccn_dk_basis(basis, C, 4, ilast)
  if (ilast > 0) then
    write(*,'(a,i0,a)') '  Success! ilast = ', ilast, ' primitives'
    write(*,'(a,f12.6)') '  First exponent: ', basis%exponents(1)
  else
    write(*,*) '  ERROR!'
  end if
  write(*,*)
  
  write(*,*) '======================================'
  write(*,*) 'All tests completed!'
  write(*,*) '======================================'
  
end program test_basis
