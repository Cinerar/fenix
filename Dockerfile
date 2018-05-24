FROM ubuntu:16.04

VOLUME ["/data"]

RUN apt-get update &&\
    apt-get install -y \
    gcc-arm-none-eabi \
    wget \
    git \
    build-essential \
    libncurses5-dev \
    libssl-dev \
    wget \
    qemu \
    qemu-user-static \
    binfmt-support \
    lib32stdc++6 \
    libstdc++6 \
    libnewlib-arm-none-eabi \
    python \
    bc \
    lib32z1 \
    sudo \
    linux-base &&\
    wget http://releases.linaro.org/archive/14.09/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux.tar.bz2 && \
    mkdir /opt/toolchains &&\
    tar -xjf gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux.tar.bz2 -C /opt/toolchains

WORKDIR /fenix

#ADD . /fenix

ENTRYPOINT ["/bin/bash"]
