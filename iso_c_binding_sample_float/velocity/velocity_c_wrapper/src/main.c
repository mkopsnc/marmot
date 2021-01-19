#include <stdio.h>
#include "velocity_c_wrapper.h"

int main() {
  float d = 10;
  float t = 2;
  float v = velocity_c_wrapper(d, t);
  printf("Velocity: %f\n", v);
}

