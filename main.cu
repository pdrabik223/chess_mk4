
#include <cuda_runtime.h>
#include <cstdio>

__global__ void kernel()
{
    printf("Hello from block %u, thread %u\n", blockIdx.x, threadIdx.x);
}

int main()
{
    kernel<<<8, 16>>>();
    cudaError_t error = cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}
