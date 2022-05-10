#include "velocity_mpi_c_wrapper.h"

int velocity_mpi_c_wrapper(int d, int t) {
  int v = 0;

  velocity_mpi_wrapper(&d, &t, &v);

  return v;
  
}

