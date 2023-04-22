# OpenWRT Docker build

More details here: https://openwrt.org/docs/guide-user/virtualization/obtain.firmware.docker
OpenWRT built with this setup is: `v22.03.4`, commit `94adc23fa693d1b129ce1718573dfb12594f20f8`.

## Get OpenWRT sources

```
git clone https://github.com/openwrt/openwrt.git
cd openwrt
git worktree add ../openwrt-22.03.4 94adc23fa693d1b129ce1718573dfb12594f20f8
cd ../openwrt-22.03.4
```

## Setup

```
docker build -t openwrt:alpine -f Dockerfile.alpine .

docker run --interactive --rm --tty --ulimit 'nofile=1024:262144' \
--volume "$(pwd):/workdir" \
--workdir '/workdir' \
openwrt:alpine /bin/bash
```

## Build

To build you can just invoke make. `V=sc` is for troubleshooting, verbosity, etc.

```
make -j10 V=sc
```