#include <stdio.h>
#include "velocity_c_wrapper.h"

int main() {
  int d = 10;
  int t = 2;
  int v = velocity_c_wrapper(d, t);
  printf("Velocity: %d\n", v);
}

