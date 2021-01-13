#!/bin/bash

for i in distance/distance_fortran velocity/velocity_fortran; do
  pushd $i
  make clean
  make
  ./bin/main
  popd
done
