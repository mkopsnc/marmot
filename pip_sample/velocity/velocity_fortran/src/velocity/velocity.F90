module velocity_module
  use iso_c_binding

  contains

    subroutine velocity_wrapper(x, t, v) bind(c, name="velocity_wrapper")

      real (c_float), intent(inout)  :: x
      real (c_float), intent(inout)  :: t
      real (c_float), intent(inout) :: v

      call velocity(x, t, v)

    end subroutine      

    subroutine velocity(x, t, v)

      implicit none

      real, intent(in)  :: x
      real, intent(in) :: t
      real, intent(out) :: v

      v = x/t

    end subroutine

end module velocity_module
