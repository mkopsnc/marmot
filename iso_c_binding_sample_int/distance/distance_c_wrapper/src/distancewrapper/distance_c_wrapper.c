#include "distance_c_wrapper.h"

int distance_c_wrapper(int v, int t) {
  int d = 0;

  distance_wrapper(&v, &t, &d);

  return d;
  
}

