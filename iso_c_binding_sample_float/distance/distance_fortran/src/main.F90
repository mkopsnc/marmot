program main

  use distance_module 

  implicit none

  real :: d  = 0;
  real :: t  = 2;
  real :: v  = 20;

  call distance(v, t, d)

  write (*,*) 'Distance', d

end program
