add_executable( main src/main.cpp )

set_source_files_properties( src/main.cpp PROPERTIES LANGUAGE CUDA )

target_include_directories( main PUBLIC include )

set_target_properties( main PROPERTIES 
                       COMPILE_FLAGS "-dc -dlink"
                       CUDA_RESOLVE_DEVICE_SYMBOLS ON )

add_library( gpu src/gpu.cpp )

set_source_files_properties( src/gpu.cpp PROPERTIES LANGUAGE CUDA )

set_target_properties( gpu PROPERTIES
                       COMPILE_FLAGS "-dc -dlink"
                       LINKER_LANGUAGE CUDA
                       CUDA_RESOLVE_DEVICE_SYMBOLS ON )

target_include_directories( gpu PUBLIC include )
