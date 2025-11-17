module gms_cgto
use iso_fortran_env, only: real64
implicit none 
private 

public :: cgto_type, atomic_basis_type

  type :: cgto_type
      integer :: l                                    
        !! Angular momentum quantum number (0=s, 1=p, 2=d, etc.)
      integer :: nfunc                                
        !! Number of primitive Gaussians in the contraction
      real(real64), allocatable :: exponents(:)       
        !! Exponents (alpha values)
      real(real64), allocatable :: coefficients(:)    
        !! Contraction coefficients
  contains
      procedure :: allocate_arrays => cgto_allocate_arrays
      procedure :: destroy => cgto_destroy
  end type cgto_type

  type :: atomic_basis_type
    character(len=:), allocatable :: element 
      !! element symbol
    type(cgto_type), allocatable :: shells(:) 
      !! array of contracted shells
    integer :: nshells 
      !! number of shells in type
  contains 
    procedure :: allocate_shells => allocate_basis_shells
    procedure :: destroy => atomic_basis_destroy
  end type atomic_basis_type

  type :: molecular_basis_type
    type(atomic_basis_type), allocatable :: elements(:)
    integer :: nelements
  contains 
    procedure :: allocate_elements => basis_set_allocate_elements
    procedure :: destroy => basis_set_destroy
  end type molecular_basis_type

contains 

 pure subroutine cgto_allocate_arrays(self, nfunc)
   class(cgto_type), intent(inout) :: self 
   integer, intent(in) :: nfunc

   self%nfunc = nfunc 
   allocate(self%exponents(nfunc))
   allocate(self%coefficients(nfunc))
 end subroutine cgto_allocate_arrays

 pure subroutine cgto_destroy(self)
  class(cgto_type), intent(inout) :: self 

  if(allocated(self%exponents)) deallocate(self%exponents)
  if(allocated(self%coefficients)) deallocate(self%coefficients)
  self%nfunc = 0
  self%l = 0 
 end subroutine cgto_destroy


 pure subroutine allocate_basis_shells(self, nshells)
    class(atomic_basis_type), intent(inout) :: self
    integer, intent(in) :: nshells 

    self%nshells = nshells 
    allocate(self%shells(nshells))
 end subroutine allocate_basis_shells

 pure subroutine atomic_basis_destroy(self)
   class(atomic_basis_type), intent(inout) :: self 
   integer :: i 

   if (allocated(self%shells)) then 
    do i = 1, self%nshells 
      call self%shells(i)%destroy()
    end do
    deallocate(self%shells)
  end if
  if (allocated(self%element)) deallocate(self%element)
  self%nshells = 0
end subroutine atomic_basis_destroy


pure subroutine basis_set_allocate_elements(self, nelements)
  class(molecular_basis_type), intent(inout) :: self
  integer, intent(in) :: nelements

  self%nelements = nelements 
  allocate(self%elements(nelements))

end subroutine basis_set_allocate_elements 

pure subroutine basis_set_destroy(self)
  class(molecular_basis_type), intent(inout) :: self 
  integer :: i 

  if(allocated(self%elements)) then 
    do i = 1, self%nelements 
      call self%elements(i)%destroy()
    end do 
    deallocate(self%elements)
  end if

  self%nelements = 0 
end subroutine basis_set_destroy

end module gms_cgto
