#!/bin/sh

echo "Cleaning..."

BUILD_START=$(date +"%s")

make clean && make mrproper 

echo "Cleaning old Images"
rm -rf arch/arm64/boot/image* && rm -rf arch/arm64/boot/Image*
echo "Done"

BUILD_END=$(date +"%s")

DIFF=$(($BUILD_END - $BUILD_START))

echo  "Full Clean completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."

