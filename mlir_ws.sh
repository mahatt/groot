#! /bin/bash

export MYLLVMWS=

mlir_config(){
mkdir -p $MYLLVMWS/build
cd  $MYLLVMWS/build
cmake -G Ninja ../llvm \
   -DLLVM_ENABLE_PROJECTS=mlir \
   -DLLVM_BUILD_EXAMPLES=ON \
   -DLLVM_TARGETS_TO_BUILD="Native;AMDGPU" \
   -DCMAKE_BUILD_TYPE=Debug \
   -DLLVM_ENABLE_ASSERTIONS=ON
}

mlb() {
cd  $MYLLVMWS/build
ninja
}
