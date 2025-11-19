program main
  use gms_basis_reader, only: say_hello, classify_line, parse_element_basis, &
                              build_molecular_basis, ang_mom_int_to_char
  use gms_cgto
  use basis_file_reader
  use iso_fortran_env, only: real64
  implicit none
  character(len=*), parameter :: test_basis = &
                                 "$DATA"//new_line('a')// &
                                 ""//new_line('a')// &
                                 "HYDROGEN"//new_line('a')// &
                                 "S 2"//new_line('a')// &
                                 "1 1.0 2.0"//new_line('a')// &
                                 "2 1.0 2.0"//new_line('a')// &
                                 ""//new_line('a')// &
                                 "L 2"//new_line('a')// &
                                 "1 1.0 2.0 3.0"//new_line('a')// &
                                 "2 4.0 5.0 6.0"//new_line('a')// &
                                 ""//new_line('a')// &
                                 "$END"

  print *, test_basis

  call test_classify_lines()

  call test_parse_element()

  call test_h2_molecule()

  call test_basis_file_reader()

contains

  subroutine test_classify_lines()
    integer :: line_start, line_end, line_num
    character(len=256) :: line
    integer :: line_type

    print *, "Testing line classification:"
    print *, "============================"

    line_start = 1
    line_num = 0

    do while (line_start <= len(test_basis))
      ! Find next newline
      line_end = index(test_basis(line_start:), new_line('a'))
      if (line_end == 0) then
        line = test_basis(line_start:)
        line_start = len(test_basis) + 1
      else
        line = test_basis(line_start:line_start + line_end - 2)
        line_start = line_start + line_end
      end if

      line_num = line_num + 1
      line = adjustl(line)

      if (len_trim(line) == 0) cycle

      line_type = classify_line(line)

      print '(i3,a,i2,a,a)', line_num, ': Type=', line_type, ' | ', trim(line)
    end do

  end subroutine test_classify_lines

  subroutine test_parse_element()
    type(atomic_basis_type) :: h_basis
    integer :: stat, i, j
    character(len=:), allocatable :: errmsg

    print *, "Testing parse_element_basis:"
    print *, "============================"
    print *

    call parse_element_basis(test_basis, "HYDROGEN", h_basis, stat, errmsg)

    if (stat /= 0) then
      print *, "ERROR: ", errmsg
      return
    end if

    print *, "Successfully parsed basis for: ", h_basis%element
    print *, "Number of shells: ", h_basis%nshells
    print *

    ! Print each shell
    do i = 1, h_basis%nshells
      print '(a,i0,a,a,a,i0,a)', "Shell ", i, " (", ang_mom_int_to_char(h_basis%shells(i)%ang_mom), &
        "): ", h_basis%shells(i)%nfunc, " primitives"
      do j = 1, h_basis%shells(i)%nfunc
        print '(2x,i2,2x,f12.6,2x,f12.6)', j, h_basis%shells(i)%exponents(j), &
          h_basis%shells(i)%coefficients(j)
      end do
      print *
    end do

    call h_basis%destroy()

  end subroutine test_parse_element

  subroutine test_h2_molecule()
    type(molecular_basis_type) :: h2_basis
    integer :: stat, iatom, ishell, ifunc
    character(len=:), allocatable :: errmsg
    character(len=*), dimension(2), parameter :: h2_atoms = ["HYDROGEN", "HYDROGEN"]

    print *, "Testing H2 molecular basis:"
    print *, "============================"
    print *

    call build_molecular_basis(test_basis, h2_atoms, h2_basis, stat, errmsg)

    if (stat /= 0) then
      print *, "ERROR: ", errmsg
      return
    end if

    print *, "Successfully built molecular basis for H2"
    print *, "Number of atoms: ", h2_basis%nelements
    print *, "Total basis functions for H2: ", h2_basis%num_basis_functions()
    print *

    ! Print basis for each atom
    do iatom = 1, h2_basis%nelements
      print '(a,i0,a,a)', "Atom ", iatom, ": ", trim(h2_basis%elements(iatom)%element)
      print '(a,i0,a)', "  Number of shells: ", h2_basis%elements(iatom)%nshells

      do ishell = 1, h2_basis%elements(iatom)%nshells
        print '(a,i0,a,a,a,i0,a)', "  Shell ", ishell, " (", &
          ang_mom_int_to_char(h2_basis%elements(iatom)%shells(ishell)%ang_mom), &
          "): ", h2_basis%elements(iatom)%shells(ishell)%nfunc, " primitives"

        do ifunc = 1, h2_basis%elements(iatom)%shells(ishell)%nfunc
          print '(4x,i2,2x,f12.6,2x,f12.6)', ifunc, &
            h2_basis%elements(iatom)%shells(ishell)%exponents(ifunc), &
            h2_basis%elements(iatom)%shells(ishell)%coefficients(ifunc)
        end do
      end do
      print *
    end do

    call h2_basis%destroy()

  end subroutine test_h2_molecule

  subroutine test_basis_file_reader()
  type(basis_file_t) :: basis_file
  type(atomic_basis_type) :: h_basis, c_basis
  character(len=:), allocatable :: h_content, c_content, errmsg
  character(len=*), parameter :: path_to_basis = "6-31G.txt"
  integer :: stat, i, j
  
  print *, "Testing basis_file_reader:"
  print *, "=========================="
  print *
  
  ! Open the basis set file once
  print *, "Opening basis set file: ", path_to_basis
  call open_basis_file(basis_file, path_to_basis)
  print *, "File opened successfully"
  print *
  
  ! Test 1: Extract and parse Hydrogen
  print *, "--- Extracting Hydrogen ---"
  h_content = extract_element(basis_file, "HYDROGEN")
  print *, "Extracted content:"
  print *, h_content
  print *
  
  call parse_element_basis(h_content, "HYDROGEN", h_basis, stat, errmsg)
  if (stat /= 0) then
    print *, "ERROR parsing Hydrogen: ", errmsg
    return
  end if
  
  print *, "Successfully parsed basis for: ", h_basis%element
  print *, "Number of shells: ", h_basis%nshells
  print *
  
  print *, h_basis%shells(1)%ang_mom
  do i = 1, h_basis%nshells
    print '(a,i0,a,a,a,i0,a)', "Shell ", i, " (", ang_mom_int_to_char(h_basis%shells(i)%ang_mom), &
      "): ", h_basis%shells(i)%nfunc, " primitives"
    do j = 1, h_basis%shells(i)%nfunc
      print '(2x,i2,2x,f12.6,2x,f12.6)', j, h_basis%shells(i)%exponents(j), &
        h_basis%shells(i)%coefficients(j)
    end do
    print *
  end do
  
  ! Test 2: Extract and parse Carbon
  print *, "--- Extracting Carbon ---"
  c_content = extract_element(basis_file, "CARBON")
  print *, "Extracted content:"
  print *, c_content
  print *
  
  call parse_element_basis(c_content, "CARBON", c_basis, stat, errmsg)
  if (stat /= 0) then
    print *, "ERROR parsing Carbon: ", errmsg
    call h_basis%destroy()
    return
  end if
  
  print *, "Successfully parsed basis for: ", c_basis%element
  print *, "Number of shells: ", c_basis%nshells
  print *

  do i = 1, c_basis%nshells
    print '(a,i0,a,a,a,i0,a)', "Shell ", i, " (", ang_mom_int_to_char(c_basis%shells(i)%ang_mom), &
      "): ", c_basis%shells(i)%nfunc, " primitives"
    do j = 1, c_basis%shells(i)%nfunc
      print '(2x,i2,2x,f12.6,2x,f12.6)', j, c_basis%shells(i)%exponents(j), &
        c_basis%shells(i)%coefficients(j)
    end do
    print *
  end do
  
  ! Cleanup
  call h_basis%destroy()
  call c_basis%destroy()
  
  print *, "All tests passed!"
  
end subroutine test_basis_file_reader

end program main
