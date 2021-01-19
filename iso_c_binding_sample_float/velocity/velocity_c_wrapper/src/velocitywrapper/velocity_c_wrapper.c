#include "velocity_c_wrapper.h"

float velocity_c_wrapper(float d, float t) {
  float v = 0;

  velocity_wrapper(&d, &t, &v);

  return v;
  
}

