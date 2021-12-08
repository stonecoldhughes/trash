include( CTest ) 

enable_testing()

add_library( catch2 INTERFACE )

target_include_directories( catch2 INTERFACE 
                            test_include )

add_library( test_utils test_src/test_utils.cpp test_include/test_utils.hpp )

target_include_directories( test_utils PUBLIC ${CMAKE_SOURCE_DIR} )

target_link_libraries( test_utils PUBLIC catch2 )

add_executable( gpu_test test_src/gpu_test.cpp )

add_test( NAME gpu_test COMMAND gpu_test )

target_include_directories( gpu_test PUBLIC include test_include )

set_source_files_properties( test_src/gpu_test.cpp PROPERTIES
                             LANGUAGE CUDA )

set_target_properties( gpu_test PROPERTIES
                       COMPILE_FLAGS "-dc"
                       CUDA_RESOLVE_DEVICE_SYMBOLS ON )
