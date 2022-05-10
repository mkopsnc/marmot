module velocity_mpi_module
  use iso_c_binding
  use mpi

  contains

    subroutine velocity_mpi_wrapper(x, t, v) bind(c, name="velocity_mpi_wrapper")

      integer                         :: ierror
      integer (c_int), intent(inout)  :: x
      integer (c_int), intent(inout)  :: t
      integer (c_int), intent(inout)  :: v

      call velocity_mpi(x, t, v)

      call MPI_BARRIER( MPI_COMM_WORLD, i_error) 

    end subroutine      

    subroutine velocity_mpi(x, t, v)

      implicit none

      integer, intent(in)  :: x
      integer, intent(in)  :: t
      integer, intent(out) :: v

      v = x/t

    end subroutine

end module velocity_mpi_module
