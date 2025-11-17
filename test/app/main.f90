program test_basis_sets
  use basis_set_lookup, only: basis_name_to_type, get_basis_info
  use basis_driver, only: load_basis
  use basis_set_data, only: basis_set_type
  use periodic_table
  implicit none

  ! Variables
  type(basis_set_type) :: basis_h, basis_c, basis_o
  character(len=50) :: basis_name, family
  integer :: basis_type, ierr, ilast
  integer :: i
  
  ! Banner
  print *, ""
  print *, "=========================================="
  print *, "   Basis Set Library Test Program"
  print *, "=========================================="
  print *, ""
  
  ! Test 1: Look up a basis set by name
  print *, "Test 1: Looking up cc-pVTZ basis set"
  print *, "--------------------------------------"
  basis_name = 'cc-pVTZ'
  call get_basis_info(basis_name, family, basis_type, ierr)
  
  if (ierr == 0) then
    print *, "  Basis name: ", trim(basis_name)
    print *, "  Family:     ", trim(family)
    print *, "  Type code:  ", basis_type
    print *, "  Status:      SUCCESS"
  else
    print *, "  ERROR: Basis set not found!"
    stop 1
  end if
  print *, ""
  
  ! Test 2: Load basis for hydrogen
  print *, "Test 2: Loading cc-pVTZ for Hydrogen"
  print *, "--------------------------------------"
  call load_basis(basis_h, HYDROGEN, basis_type, ilast)
  
  if (ilast > 0) then
    print *, "  Element:     Hydrogen (Z=1)"
    print *, "  Primitives:  ", ilast
    print *, "  Status:      SUCCESS"
    print *, ""
    print *, "  First 5 primitives:"
    do i = 1, min(5, ilast)
      print '(A,I3,A,ES14.6,A,ES14.6)', "    Prim ", i, ": exp=", &
        basis_h%exponents(i), " s_coef=", basis_h%s_coef(i)
    end do
  else
    print *, "  ERROR: Failed to load basis!"
    stop 1
  end if
  print *, ""
  
  ! Test 3: Load basis for carbon
  print *, "Test 3: Loading cc-pVTZ for Carbon"
  print *, "--------------------------------------"
  call load_basis(basis_c, CARBON, basis_type, ilast)
  
  if (ilast > 0) then
    print *, "  Element:     Carbon (Z=6)"
    print *, "  Primitives:  ", ilast
    print *, "  Status:      SUCCESS"
  else
    print *, "  ERROR: Failed to load basis!"
    stop 1
  end if
  print *, ""
  
  ! Test 4: Load basis for oxygen
  print *, "Test 4: Loading cc-pVTZ for Oxygen"
  print *, "--------------------------------------"
  call load_basis(basis_o, OXYGEN, basis_type, ilast)
  
  if (ilast > 0) then
    print *, "  Element:     Oxygen (Z=8)"
    print *, "  Primitives:  ", ilast
    print *, "  Status:      SUCCESS"
  else
    print *, "  ERROR: Failed to load basis!"
    stop 1
  end if
  print *, ""
  
  ! Test 5: Try a different basis set (STO-3G)
  print *, "Test 5: Loading STO-3G for water molecule (H2O)"
  print *, "--------------------------------------"
  basis_name = 'STO-3G'
  basis_type = basis_name_to_type(basis_name)
  
  if (basis_type == -1) then
    print *, "  ERROR: Unknown basis set!"
    stop 1
  end if
  
  ! Load for H
  call load_basis(basis_h, HYDROGEN, basis_type, ilast)
  print '(A,I3,A)', "  H:  ", ilast, " primitives"
  
  ! Load for O
  call load_basis(basis_o, OXYGEN, basis_type, ilast)
  print '(A,I3,A)', "  O:  ", ilast, " primitives"
  print *, "  Status:      SUCCESS"
  print *, ""
  
  ! Test 6: Test error handling (invalid basis)
  print *, "Test 6: Testing error handling"
  print *, "--------------------------------------"
  basis_name = 'INVALID-BASIS-XYZ'
  call get_basis_info(basis_name, family, basis_type, ierr)
  
  if (ierr /= 0) then
    print *, "  Basis name: ", trim(basis_name)
    print *, "  Status:      Correctly rejected invalid basis"
  else
    print *, "  ERROR: Should have rejected invalid basis!"
    stop 1
  end if
  print *, ""
  
  ! Test 7: Compare basis set sizes across a series
  print *, "Test 7: Comparing Dunning basis set sizes for Carbon"
  print *, "--------------------------------------"
  print *, "  Basis Set       Primitives"
  print *, "  ------------    ----------"
  
  ! cc-pVDZ
  basis_type = basis_name_to_type('cc-pVDZ')
  call load_basis(basis_c, CARBON, basis_type, ilast)
  print '(A,I10)', "  cc-pVDZ     ", ilast
  
  ! cc-pVTZ
  basis_type = basis_name_to_type('cc-pVTZ')
  call load_basis(basis_c, CARBON, basis_type, ilast)
  print '(A,I10)', "  cc-pVTZ     ", ilast
  
  ! cc-pVQZ
  basis_type = basis_name_to_type('cc-pVQZ')
  call load_basis(basis_c, CARBON, basis_type, ilast)
  print '(A,I10)', "  cc-pVQZ     ", ilast
  
  ! cc-pV5Z
  basis_type = basis_name_to_type('cc-pV5Z')
  call load_basis(basis_c, CARBON, basis_type, ilast)
  print '(A,I10)', "  cc-pV5Z     ", ilast
  
  print *, ""
  print *, "=========================================="
  print *, "   All tests passed successfully!"
  print *, "=========================================="
  print *, ""
  
end program test_basis_sets
