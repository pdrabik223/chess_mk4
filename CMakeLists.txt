cmake_minimum_required(VERSION 3.31.0)

project("chess_mk4")

enable_language(CUDA)
find_package(CUDAToolkit REQUIRED)

file(GLOB cpu_source_files "${CMAKE_SOURCE_DIR}/*.cpp" "${CMAKE_SOURCE_DIR}/*.h")
file(GLOB gpu_source_files "${CMAKE_SOURCE_DIR}/*.cu" "${CMAKE_SOURCE_DIR}/*.cuh")

include_directories(${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})

add_executable(${PROJECT_NAME} ${cpu_source_files} ${gpu_source_files})

# https://www.tonys-studio.top/posts/Getting-Started-with-CUDA/#Missing-cl-exe