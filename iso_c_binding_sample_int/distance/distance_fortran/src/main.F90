program main

  use distance_module 

  implicit none

  integer :: d  = 0;
  integer :: t  = 2;
  integer :: v  = 20;

  call distance(v, t, d)

  write (*,*) 'Distance', d

end program
