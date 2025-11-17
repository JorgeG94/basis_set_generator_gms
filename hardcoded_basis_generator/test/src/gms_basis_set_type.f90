module basis_set_data
  use iso_fortran_env, only: real64
  implicit none
  
  integer, parameter :: nbas_dims = 424
  type :: basis_set_type
    real(real64) :: exponents(nbas_dims)
    real(real64) :: s_coef(nbas_dims)
    real(real64) :: p_coef(nbas_dims)
    real(real64) :: d_coef(nbas_dims)
    real(real64) :: f_coef(nbas_dims)
    real(real64) :: g_coef(nbas_dims)
    real(real64) :: h_coef(nbas_dims)
    real(real64) :: i_coef(nbas_dims)
  contains
    procedure :: initialize => basis_set_initialize
    procedure :: print => basis_set_print
  end type basis_set_type
  
contains

  pure subroutine basis_set_initialize(this)
    class(basis_set_type), intent(inout) :: this
    
    this%exponents = 0.0_real64
    this%s_coef = 0.0_real64
    this%p_coef = 0.0_real64
    this%d_coef = 0.0_real64
    this%f_coef = 0.0_real64
    this%g_coef = 0.0_real64
    this%h_coef = 0.0_real64
    this%i_coef = 0.0_real64
    
  end subroutine basis_set_initialize
  
  subroutine basis_set_print(this, ilast, unit_num)
    class(basis_set_type), intent(in) :: this
    integer, intent(in) :: ilast
    integer, intent(in), optional :: unit_num
    integer :: i, iunit
    
    if (present(unit_num)) then
      iunit = unit_num
    else
      iunit = 6  ! stdout
    end if
    
    write(iunit,*) 'Basis set data (', ilast, ' primitives):'
    write(iunit,*) '  Index    Exponent         S          P          D          F          G          H      I'
    do i = 1, ilast
      write(iunit,'(i6,7es12.4)') i, this%exponents(i), this%s_coef(i), &
                                   this%p_coef(i), this%d_coef(i), &
                                   this%f_coef(i), this%g_coef(i), this%h_coef(i), &
                                   this%i_coef(i)
    end do
    
  end subroutine basis_set_print
  
end module basis_set_data
