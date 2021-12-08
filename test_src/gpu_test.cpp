#include "test_include/test_utils.hpp"
#include "gpu.hpp"

TEST_CASE( "gpu test" )
{
  SECTION( "t0" )
  {
    int t = 1e6;

    class gpu gpu;

    thrust::counting_iterator< std::size_t > start( 0 );
    thrust::counting_iterator< std::size_t > end( t );
    
    for( int i = 0; i < t; i++ )
    {
      thrust::for_each( thrust::device, start, end, gpu );
    }

    REQUIRE( false );
  }
}
