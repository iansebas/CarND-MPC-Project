#!/bin/bash

cd ~/CarND-MPC-Control-Project
# Remove the dedicated output directories
rm -rf build
# We're done!
echo Cleaned up the project!
# Go into the directory where this bash script is contained.
# Compile code.
mkdir -p build
cd build
cmake ..
make -j `nproc` $*

# Run particle filter
cd ~/CarND-MPC-Control-Project/build
./mpc

