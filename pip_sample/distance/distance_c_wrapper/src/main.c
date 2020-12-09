#include <stdio.h>
#include "distance_c_wrapper.h"

int main() {
  float v = 20;
  float t = 2;
  float d = distance_c_wrapper(v, t);
  printf("Distance: %f\n", d);
}

