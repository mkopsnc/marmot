#include "velocity_c_wrapper.h"

int velocity_c_wrapper(int d, int t) {
  int v = 0;

  velocity_wrapper(&d, &t, &v);

  return v;
  
}

