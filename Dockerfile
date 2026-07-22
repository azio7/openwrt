FROM debian:bookworm

RUN apt update && apt install -y --no-install-recommends \
    build-essential flex bison gawk git python3 python3-dev \
    python3-setuptools libncurses-dev zlib1g-dev libssl-dev \
    ca-certificates \
    wget unzip file rsync cpio perl libelf-dev bc swig time \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /openwrt
