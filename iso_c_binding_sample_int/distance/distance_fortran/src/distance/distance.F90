module distance_module
  use iso_c_binding

  contains

    subroutine distance_wrapper(v, t, d) bind(c, name="distance_wrapper")

      integer (c_int), intent(inout)  :: v
      integer (c_int), intent(inout)  :: t
      integer (c_int), intent(inout)  :: d

      call distance(v, t, d)

    end subroutine      

    subroutine distance(v, t, d)

      implicit none

      integer, intent(in)  :: v
      integer, intent(in) :: t
      integer, intent(out) :: d

      d = v * t

    end subroutine

end module distance_module
