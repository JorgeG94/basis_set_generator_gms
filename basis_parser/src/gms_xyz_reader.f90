module gms_xyz_reader
  use iso_fortran_env, only: real64
  implicit none
  private
  
  public :: geometry_type
  public :: read_xyz_file, read_xyz_string
  
  type :: geometry_type
    integer :: natoms
    character(len=:), allocatable :: elements(:)
    real(real64), allocatable :: coords(:,:)  ! coords(3, natoms)
    character(len=:), allocatable :: comment
  contains
    procedure :: destroy => geometry_destroy
  end type geometry_type
  
contains

subroutine read_xyz_file(filename, geom, stat, errmsg)
  character(len=*), intent(in) :: filename
  type(geometry_type), intent(out) :: geom
  integer, intent(out) :: stat
  character(len=:), allocatable, intent(out) :: errmsg
  
  integer :: unit, io_stat, file_size
  logical :: file_exists
  character(len=:), allocatable :: file_contents
  
  stat = 0
  
  ! Check if file exists
  inquire(file=filename, exist=file_exists, size=file_size)
  if (.not. file_exists) then
    stat = 1
    errmsg = "XYZ file not found: " // trim(filename)
    return
  end if
  
  ! Allocate buffer for entire file
  allocate(character(len=file_size) :: file_contents)
  
  ! Open and read entire file as stream
  open(newunit=unit, file=filename, status='old', action='read', &
       access='stream', form='unformatted', iostat=io_stat)
  if (io_stat /= 0) then
    stat = io_stat
    errmsg = "Error opening file: " // trim(filename)
    return
  end if
  
  read(unit, iostat=io_stat) file_contents
  close(unit)
  
  if (io_stat /= 0) then
    stat = io_stat
    errmsg = "Error reading file: " // trim(filename)
    return
  end if
  
  ! Parse the contents
  call read_xyz_string(file_contents, geom, stat, errmsg)
  
end subroutine read_xyz_file

subroutine read_xyz_string(xyz_string, geom, stat, errmsg)
  character(len=*), intent(in) :: xyz_string
  type(geometry_type), intent(out) :: geom
  integer, intent(out) :: stat
  character(len=:), allocatable, intent(out) :: errmsg
  
  character(len=:), allocatable :: lines(:)
  integer :: nlines, iatom, io_stat, max_element_len
  character(len=256) :: element
  real(real64) :: x, y, z
  character(len=500) :: temp_msg
  
  stat = 0
  
  ! Split into lines
  call split_lines(xyz_string, lines, nlines)
  
  if (nlines < 2) then
    stat = 1
    errmsg = "XYZ file must have at least 2 lines (natoms + comment)"
    return
  end if
  
  ! Read number of atoms from first line
  read(lines(1), *, iostat=io_stat) geom%natoms
  if (io_stat /= 0) then
    stat = 1
    errmsg = "Failed to read number of atoms from first line"
    return
  end if
  
  if (geom%natoms < 0) then
    stat = 1
    errmsg = "Number of atoms must be non-negative"
    return
  end if
  
  ! Store comment line
  geom%comment = trim(adjustl(lines(2)))
  
  ! Check we have enough lines
  if (nlines < 2 + geom%natoms) then
    stat = 1
    write(temp_msg, '(A,I0,A,I0,A)') "XYZ file has insufficient lines: expected ", &
                                      2 + geom%natoms, ", got ", nlines, ""
    errmsg = trim(temp_msg)
    return
  end if
  
  ! Allocate arrays
  max_element_len = 4  ! Enough for most element symbols
  allocate(character(len=max_element_len) :: geom%elements(geom%natoms))
  allocate(geom%coords(3, geom%natoms))
  
  ! Read atom data
  do iatom = 1, geom%natoms
    read(lines(2 + iatom), *, iostat=io_stat) element, x, y, z
    if (io_stat /= 0) then
      stat = 1
      write(temp_msg, '(A,I0,A)') "Failed to parse atom data on line ", &
                                   2 + iatom, ": '"//trim(lines(2 + iatom))//"'"
      errmsg = trim(temp_msg)
      return
    end if
    
    geom%elements(iatom) = trim(adjustl(element))
    geom%coords(1, iatom) = x
    geom%coords(2, iatom) = y
    geom%coords(3, iatom) = z
  end do
  
end subroutine read_xyz_string

subroutine split_lines(text, lines, nlines)
  character(len=*), intent(in) :: text
  character(len=:), allocatable, intent(out) :: lines(:)
  integer, intent(out) :: nlines
  
  integer :: i, line_start, max_line_len
  character(len=1) :: ch
  character(len=:), allocatable :: temp_lines(:)
  
  ! Count lines and find max length
  nlines = 1  ! Start with 1 since we always have at least one line
  line_start = 1
  max_line_len = 0
  
  do i = 1, len(text)
    ch = text(i:i)
    if (ch == new_line('a') .or. ch == achar(10)) then
      max_line_len = max(max_line_len, i - line_start)
      nlines = nlines + 1
      line_start = i + 1
    else if (ch == achar(13)) then  ! CR - check for CRLF
      if (i < len(text)) then
        if (text(i+1:i+1) == achar(10)) cycle  ! Skip CR in CRLF
      end if
      max_line_len = max(max_line_len, i - line_start)
      nlines = nlines + 1
      line_start = i + 1
    end if
  end do
  
  ! Handle last line
  max_line_len = max(max_line_len, len(text) - line_start + 1)
  
  ! Need at least length 1 for empty lines
  if (max_line_len == 0) max_line_len = 1
  
  ! Allocate output with explicit character length
  allocate(character(len=max_line_len) :: temp_lines(nlines))
  temp_lines = ""  ! Initialize all to empty
  
  ! Extract lines
  nlines = 0
  line_start = 1
  
  do i = 1, len(text)
    ch = text(i:i)
    if (ch == new_line('a') .or. ch == achar(10)) then
      nlines = nlines + 1
      if (i > line_start) then
        temp_lines(nlines) = text(line_start:i-1)
      else
        temp_lines(nlines) = ""  ! Empty line
      end if
      line_start = i + 1
    else if (ch == achar(13)) then  ! CR
      if (i < len(text)) then
        if (text(i+1:i+1) == achar(10)) cycle  ! Skip CR in CRLF
      end if
      nlines = nlines + 1
      if (i > line_start) then
        temp_lines(nlines) = text(line_start:i-1)
      else
        temp_lines(nlines) = ""  ! Empty line
      end if
      line_start = i + 1
    end if
  end do
  
  ! Handle last line (text after last newline, or entire text if no newlines)
  nlines = nlines + 1
  if (line_start <= len(text)) then
    temp_lines(nlines) = text(line_start:len(text))
  else
    temp_lines(nlines) = ""
  end if
  
  ! Allocate and copy to output
  allocate(character(len=max_line_len) :: lines(nlines))
  lines = temp_lines(1:nlines)
  
end subroutine split_lines


  subroutine geometry_destroy(this)
    class(geometry_type), intent(inout) :: this
    if (allocated(this%elements)) deallocate(this%elements)
    if (allocated(this%coords)) deallocate(this%coords)
    if (allocated(this%comment)) deallocate(this%comment)
    this%natoms = 0
  end subroutine geometry_destroy

end module gms_xyz_reader