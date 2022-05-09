#include "velocity_mpi_c_wrapper.h"

float velocity_mpi_c_wrapper(float d, float t) {
  float v = 0;

  velocity_mpi_wrapper(&d, &t, &v);

  return v;
  
}

