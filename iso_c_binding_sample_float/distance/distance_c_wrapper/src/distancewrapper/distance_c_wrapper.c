#include "distance_c_wrapper.h"

float distance_c_wrapper(float v, float t) {
  float d = 0;

  distance_wrapper(&v, &t, &d);

  return d;
  
}

