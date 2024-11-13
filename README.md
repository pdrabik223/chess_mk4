# chess_mk4

Mark 3 focused on hardware limitations, project had to run on ATmega328P MCU processor. This version aims to do the opposite, this time we're using all 32 GB of RAM, all 16 cores of AMD Ryzen9 and RTX 4080. The goal is to make my pc scream while calculating chess... 

# USefull links
[cuda tutorial](https://docs.nvidia.com/cuda/cuda-c-programming-guide/)

[cuda download](https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64&target_version=11&target_type=exe_local)

[cmake download](https://cmake.org/download/)

llvm comes with visual studio... just remember to add it to the path.  
 
[mvp tutorial by tonys-studio](https://www.tonys-studio.top/posts/Getting-Started-with-CUDA/#Missing-cl-exe)

## Compile instructions

NOTE make sure to use x64 host, this is forced on su by cuda libraries 

To compile program: 

```shell
nvcc .\main.cu -o chess_mk4.exe
```  

or compile using cmake:

Run cmake
```shell
cmake .
```

and build

```shell
cmake --build .
```

If you encounter 'cudafe++' issues there might be host version mismatch between cuda and msvc, than force cmake to use x64 architecture:  
  
```shell
cmake -G "Visual Studio 17 2022" -A x64 -S ./ -B "build64"
```

or 

```shell
cmake --build build64
```
