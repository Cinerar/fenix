PKG_NAME="gcc-linaro-arm-none-eabi"
PKG_VERSION="4.8-2013.11"
PKG_VERSION_SHORT="13.11"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL="https://releases.linaro.org/archive/${PKG_VERSION_SHORT}/components/toolchain/binaries/gcc-linaro-arm-none-eabi-${PKG_VERSION}_linux.tar.xz"
PKG_SOURCE_DIR="gcc-linaro-arm-none-eabi-${PKG_VERSION}_linux"
PKG_SOURCE_NAME="$(basename $PKG_URL)"
PKG_SHA256=""
PKG_NEED_BUILD="NO"
PKG_SHORTDESC="GCC for building Amlogic U-Boot firmware"

makeinstall_host() {
	mkdir -p $TOOLCHAINS/gcc-linaro-arm-none-eabi/
	rm -rf $TOOLCHAINS/gcc-linaro-arm-none-eabi/*
	cp -a $BUILD/$PKG_NAME-$PKG_VERSION/* $TOOLCHAINS/gcc-linaro-arm-none-eabi
}
