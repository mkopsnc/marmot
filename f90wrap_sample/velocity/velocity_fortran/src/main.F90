program main

  use velocity_module

  implicit none

  real :: x  = 10;
  real :: t  = 2;
  real :: v  = 0;

  call velocity(x, t, v)

  write (*,*) 'Velocity', v

end program
