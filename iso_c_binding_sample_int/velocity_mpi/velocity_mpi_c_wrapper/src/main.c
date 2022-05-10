#include <stdio.h>
#include "velocity_mpi_c_wrapper.h"
#include "mpi.h"

int main(int argc, char** argv) {
  int d = 10;
  int t = 2;

  MPI_Init(&argc, &argv);

  int v = velocity_mpi_c_wrapper(d, t);

  MPI_Finalize();
 
  printf("Velocity: %d\n", v);
}

