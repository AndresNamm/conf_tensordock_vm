#!/bin/bash

# Check if CUDA is installed
if command -v nvcc &> /dev/null; then
    echo "CUDA is installed."
    
    # Check CUDA version
    cuda_version=$(nvcc --version | grep "release" | awk '{print $5}' | sed 's/,//')
    echo "CUDA version: $cuda_version"
else
    echo "CUDA is not installed."
fi