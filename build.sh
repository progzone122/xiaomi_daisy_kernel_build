#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-

make -C . mrproper
rm -rf out/*

make O=out ARCH=arm64 daisy-perf_defconfig

scripts/config --file out/.config --disable CONFIG_WERROR
scripts/config --file out/.config --disable CONFIG_CC_STACKPROTECTOR_STRONG

make O=out ARCH=arm64 oldconfig

make O=out ARCH=arm64 DTC=dtc KCFLAGS="-Wno-error -Wno-array-bounds" -j$(nproc)
