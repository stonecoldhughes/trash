#include "thrust/execution_policy.h"
#include <iostream>

struct gpu
{
  public:

  __host__
  __device__
  void operator()( int index );
};
