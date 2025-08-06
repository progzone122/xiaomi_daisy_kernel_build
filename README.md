# xiaomi_daisy_kernel_build
Patches, ready-made script and instructions to build kernel from Xiaomi official repository for Xiaomi Mi A2 Lite phone (xiaomi-daisy).

## Preparation the environment

### Installing basic dependencies
```shell
sudo pacman -S base-devel git bc wget curl python cpio gcc clang lld llvm make zip unzip
```

### Installing toolchain
Install the [aarch64-linux-gnu-gcc](https://archlinux.org/packages/extra/x86_64/aarch64-linux-gnu-gcc) toolchain from AUR.

```shell
paru -S aarch64-linux-gnu-gcc
```

> Note: Ensure you have paru or another AUR helper installed.

## Download the kernel source code
Download the kernel source code from the official repository [Xiaomi_Kernel_OpenSource](https://github.com/MiCode/Xiaomi_Kernel_OpenSource) and select the needed branch.

```shell
git clone https://github.com/MiCode/Xiaomi_Kernel_OpenSource -b daisy-q-oss --depth 1
cd Xiaomi_Kernel_OpenSource
```

## Download the additional repository
Download and move my repository with scripts and patches to the kernel source root for a successful build.

```shell
git clone https://github.com/progzone122/xiaomi_daisy_kernel_build
```

## Patching
Fix the shitcode from Ximi using my patches.

```shell
./xiaomi_daisy_kernel_build/patch_all.sh
```

## Building
```shell
./xiaomi_daisy_kernel_build/build.sh
```

## Notes
- `patch_all.sh` applies all patches from this repository to the Xiaomi kernel tree.
- `build.sh` `configures and compiles the kernel automatically using the correct toolchain.
