export OPEN_WRT_PATH="/Volumes/OpenWrt/openwrt"
#These depend on your arch. Look it up on your build folder.
export ARCH="mipsel-openwrt-linux"
export TOOLCHAIN="toolchain-mipsel_24kc_gcc-7.3.0_musl"

export AR=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-ar
export CC=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-gcc
export CXX=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-g++
export LINK=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-g++
export RANLIB=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-ranlib
export STAGING_DIR=${OPEN_WRT_PATH}/staging_dir
export LIBPATH=${OPEN_WRT_PATH}/staging_dir/toolchain-${TOOLCHAIN}/lib
export LDFLAGS='-Wl,-rpath-link '${LIBPATH}


./configure --without-snapshot --without-npm --without-intl --fully-static
make


# Use this to connect to the qemu vm
# scp -r jsdario@192.168.0.105:/Volumes/OpenWrt/node .