target_link_libraries( gpu thrust CUDA::cudart )
target_link_libraries( gpu_test gpu thrust CUDA::cudart test_utils )
target_link_libraries( main gpu )
