program main

  use velocity_mpi_module
  use mpi

  implicit none

  integer :: ierror;
  integer :: x  = 10;
  integer :: t  = 2;
  integer :: v  = 0;

  call MPI_INIT(ierror)

  call velocity(x, t, v)

  write (*,*) 'Velocity', v

  call MPI_FINALIZE(ierror)

end program
