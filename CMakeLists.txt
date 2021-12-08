cmake_minimum_required( VERSION 3.13 )

project( trash CXX C )

set( CMAKE_CXX_STANDARD 17 )

set( CMAKE_BUILD_TYPE Debug )

set( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/CMake )

include( CMake/dependencies.cmake )

include( CMake/define_source_components.cmake )

include( CMake/define_test_components.cmake )

include( CMake/crosslink_components.cmake )

include( CMake/enforce_build_order.cmake )
