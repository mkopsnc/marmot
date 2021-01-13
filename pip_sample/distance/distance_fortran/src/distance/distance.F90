module distance_module
  use iso_c_binding

  contains

    subroutine distance_wrapper(v, t, d) bind(c, name="distance_wrapper")

      real (c_float), intent(inout)  :: v
      real (c_float), intent(inout)  :: t
      real (c_float), intent(inout)  :: d

      call distance(v, t, d)

    end subroutine      

    subroutine distance(v, t, d)

      implicit none

      real, intent(in)  :: v
      real, intent(in) :: t
      real, intent(out) :: d

      d = v * t

    end subroutine

end module distance_module
