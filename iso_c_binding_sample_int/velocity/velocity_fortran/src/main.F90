program main

  use velocity_module

  implicit none

  integer :: x  = 10;
  integer :: t  = 2;
  integer :: v  = 0;

  call velocity(x, t, v)

  write (*,*) 'Velocity', v

end program
