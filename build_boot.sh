#!/bin/sh

BUILD_START=$(date +"%s")

echo "Cleaning..."

make clean && make mrproper && export CROSS_COMPILE=/home/dominicburrito/kernels/gcc-clang/proton-clang/bin/aarch64-linux-gnu- && export CROSS_COMPILE_ARM32=/home/dominicburrito/kernels/gcc-clang/proton-clang/bin/arm-linux-gnueabi- && export ARCH=arm64 && export SUBARCH=arm64 && make beryllium_user_defconfig && echo "Starting Build..." && make CC=clang -j9 

BUILD_END=$(date +"%s")

DIFF=$(($BUILD_END - $BUILD_START))

echo -e "Build completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."

