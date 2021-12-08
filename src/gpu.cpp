#include "gpu.hpp"

__host__
__device__
void gpu::operator()( int index )
{
  int x = index * index;

  x += 1000;
}
