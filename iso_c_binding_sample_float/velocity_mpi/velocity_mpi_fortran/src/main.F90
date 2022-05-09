program main

  use velocity_mpi_module
  use mpi

  implicit none


  integer :: ierror;
  real    :: x = 10;
  real    :: t = 2;
  real    :: v = 0;


  call MPI_INIT(ierror)

  call velocity_mpi(x, t, v)

  call MPI_FINALIZE(ierror)

  write (*,*) 'Velocity', v

end program
