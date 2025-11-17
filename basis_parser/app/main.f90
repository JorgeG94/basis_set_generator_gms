program main
  use gms_basis_reader, only: say_hello, classify_line, parse_element_basis
  use  gms_cgto
  use iso_fortran_env, only: real64
  implicit none
      character(len=*), parameter :: test_basis = &
        "$DATA" // new_line('a') // &
        "" // new_line('a') // &
        "HYDROGEN" // new_line('a') // &
        "S 2" // new_line('a') // &
        "1 1.0 2.0" // new_line('a') // &
        "2 1.0 2.0" // new_line('a') // &
        "" // new_line('a') // &
        "L 2" // new_line('a') // &
        "1 1.0 2.0 3.0" // new_line('a') // &
        "2 4.0 5.0 6.0" // new_line('a') // &
        "" // new_line('a') // &
        "$END"
  
  print *, test_basis

  call test_classify_lines()

  call test_parse_element()

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
                line = test_basis(line_start:line_start+line_end-2)
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
    character(len=1), dimension(0:6) :: ang_mom_names = ['S', 'P', 'D', 'F', 'G', 'H', 'I']
    
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
        print '(a,i0,a,a,a,i0,a)', "Shell ", i, " (", ang_mom_names(h_basis%shells(i)%l), &
            "): ", h_basis%shells(i)%nfunc, " primitives"
        do j = 1, h_basis%shells(i)%nfunc
            print '(2x,i2,2x,f12.6,2x,f12.6)', j, h_basis%shells(i)%exponents(j), &
                h_basis%shells(i)%coefficients(j)
        end do
        print *
    end do
    
    call h_basis%destroy()
    
end subroutine test_parse_element

end program main
