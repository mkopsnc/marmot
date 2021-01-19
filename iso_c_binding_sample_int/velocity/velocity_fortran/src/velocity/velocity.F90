module velocity_module
  use iso_c_binding

  contains

    subroutine velocity_wrapper(x, t, v) bind(c, name="velocity_wrapper")

      integer (c_int), intent(inout)  :: x
      integer (c_int), intent(inout)  :: t
      integer (c_int), intent(inout) :: v

      call velocity(x, t, v)

    end subroutine      

    subroutine velocity(x, t, v)

      implicit none

      integer, intent(in)  :: x
      integer, intent(in) :: t
      integer, intent(out) :: v

      v = x/t

    end subroutine

end module velocity_module
