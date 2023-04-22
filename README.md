# OpenWRT Docker build

More details here: https://openwrt.org/docs/guide-user/virtualization/obtain.firmware.docker
OpenWRT built with this setup is: `v22.03.4`, ie. the latest version as of today.

## Get OpenWRT sources

```
git clone https://github.com/openwrt/openwrt.git
cd openwrt
git worktree add ../openwrt-<branch name> -b <branch name>; cd ../openwrt-<branch name>
```

## Setup

```
docker build -t openwrt-builder .
docker run -it --rm \
-v $PWD/openwrt:/workdir/openwrt \
openwrt-builder
```