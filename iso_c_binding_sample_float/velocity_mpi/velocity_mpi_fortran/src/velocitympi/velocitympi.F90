module velocity_mpi_module
  use iso_c_binding
  use mpi

  contains

    subroutine velocity_mpi_wrapper(x, t, v) bind(c, name="velocity_mpi_wrapper")

      integer                        :: ierror
      real (c_float), intent(inout)  :: x
      real (c_float), intent(inout)  :: t
      real (c_float), intent(inout)  :: v

      call MPI_BARRIER( MPI_COMM_WORLD, i_error)

      call velocity_mpi(x, t, v)

    end subroutine      

    subroutine velocity_mpi(x, t, v)

      implicit none

      real, intent(in)  :: x
      real, intent(in) :: t
      real, intent(out) :: v

      v = x/t

    end subroutine

end module velocity_mpi_module
