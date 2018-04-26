OPEN_WRT_PATH="/Volumes/OpenWrt/openwrt"
#These depend on your arch. Look it up on your build folder.
ARCH="mipsel-openwrt-linux-musl"
TOOLCHAIN="toolchain-mipsel_24kc_gcc-7.3.0_musl"

export AR=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-ar
export CC=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-gcc
export CXX=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-g++
export LINK=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-g++
export RANLIB=${OPEN_WRT_PATH}/staging_dir/${TOOLCHAIN}/bin/${ARCH}-ranlib
export STAGING_DIR=${OPEN_WRT_PATH}/staging_dir
export LIBPATH=${OPEN_WRT_PATH}/staging_dir/toolchain-${TOOLCHAIN}/lib
export LDFLAGS='-Wl,-rpath-link '${LIBPATH}
