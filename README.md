# debug-cmake-FindMPI

This package contains the standard CMake FindMPI.cmake along with supporting files and modifications to aid in debugging problems.

To use it, run ```./try.sh```. This will autogenerate a new CMake configuration directory, attempt to find MPI, and leave a log of what happened in ```latest.log```.

Any arguments passed to the script will be passed to CMake. Some useful ones you might want to modify:
* -DCMAKE_C_COMPILER=/path/to/cc
* -DCMAKE_CXX_COMPILER=/path/to/++ 
* -DMPI_C_COMPILER=/path/to/mpicc
* -DMPI_CXX_COMPILER=/path/to/mpicxx
