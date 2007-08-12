! { dg-do run }
! { dg-options "-fdefault-integer-8" }
!
program trs
  implicit none
  integer :: size, ierr
  integer, allocatable, dimension(:) :: seed, check
  call test_random_seed(size)
  allocate(seed(size),check(size))
  call test_random_seed(put=seed)
  call test_random_seed(get=check)
  if (any (seed /= check)) call abort
contains
  subroutine test_random_seed(size, put, get)
    integer, optional :: size
    integer, dimension(:), optional :: put
    integer, dimension(:), optional :: get
    call random_seed(size, put, get)
  end subroutine test_random_seed
end program trs
