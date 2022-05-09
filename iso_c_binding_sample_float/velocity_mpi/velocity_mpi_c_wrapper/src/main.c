#include <stdio.h>
#include "velocity_mpi_c_wrapper.h"
#include "mpi.h"

int main(int argc, char** argv) {
  float d = 10;
  float t = 2;

  MPI_Init(&argc, &argv);

  float v = velocity_mpi_c_wrapper(d, t);

  MPI_Finalize();

  printf("Velocity: %f\n", v);
}

