set( THRUST_INCLUDE_DIR "${CUDAToolkit_INCLUDE_DIRS}" CACHE PATH "" FORCE )

set(THRUST_INCLUDE_DIRS ${THRUST_INCLUDE_DIR} CACHE PATH "" FORCE )

find_package(Thrust REQUIRED)

add_library( thrust INTERFACE )

if( TARGET thrust_download )

  add_dependencies( thrust thrust_download )

endif()

include_directories( ${THRUST_INCLUDE_DIR} )

target_include_directories( thrust INTERFACE ${THRUST_INCLUDE_DIR} )
