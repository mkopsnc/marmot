#!/bin/bash

for i in distance/distance_fortran distance/distance_c_wrapper velocity/velocity_fortran velocity/velocity_c_wrapper velocity_mpi/velocity_mpi_fortran velocity_mpi/velocity_mpi_c_wrapper; do
  pushd $i
  make clean
  popd
done

rm -rf distance/distance_python/distance_wrapper/lib*
rm -rf velocity/velocity_python/velocity_wrapper/lib*
rm -rf velocity_mpi/velocity_mpi_python/velocity_mpi_wrapper/lib*
