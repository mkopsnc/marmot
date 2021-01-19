#include <stdio.h>
#include "distance_c_wrapper.h"

int main() {
  int v = 20;
  int t = 2;
  int d = distance_c_wrapper(v, t);
  printf("Distance: %d\n", d);
}

