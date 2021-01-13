#!/bin/bash

for i in distance/distance_fortran velocity/velocity_fortran ; do
  pushd $i
  make clean
  popd
done

rm -rf distance/distance_python/distance_wrapper/lib*
rm -rf velocity/velocity_python/velocity_wrapper/lib*
rm -rf distance.cpython-*
rm -rf velocity.cpython-*
rm -rf distance_wrapper
rm -rf velocity_wrapper
rm -rf dist
