module basis_types
  implicit none
  private
  
  public :: n_zeta_to_basis
  ! Basis set size constants
  integer, parameter, public :: PVDZ = 1   
  integer, parameter, public :: PVTZ = 2   
  integer, parameter, public :: PVQZ = 3   
  integer, parameter, public :: PV5Z = 4  
  integer, parameter, public :: PV6Z = 5  
  integer, parameter, public :: PV7Z = 6  
  integer, parameter, public :: PV8Z = 7  
  integer, parameter, public :: PV9Z = 8  

contains 

  function n_zeta_to_basis(n_zeta) result(basis_idx)
    implicit none
    integer, intent(in) :: n_zeta
    integer :: basis_idx
    
    select case (n_zeta)
    case (2)
      basis_idx = PVDZ
    case (3)
      basis_idx = PVTZ
    case (4)
      basis_idx = PVQZ
    case (5)
      basis_idx = PV5Z
    case (6)
      basis_idx = PV6Z
    case (7)
      basis_idx = PV7Z
    case (8)
      basis_idx = PV8Z
    case (9)
      basis_idx = PV9Z
    case default
      basis_idx = -1  ! Error value
    end select
    
  end function n_zeta_to_basis

end module basis_types
