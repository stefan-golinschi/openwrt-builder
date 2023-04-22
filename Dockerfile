FROM docker.io/alpine:latest

ENV GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
WORKDIR /workdir

RUN apk add --no-cache \
    'argp-standalone' \
    'asciidoc' \
    'bash' \
    'bc' \
    'binutils' \
    'bzip2' \
    'cdrkit' \
    'coreutils' \
    'diffutils' \
    'elfutils-dev' \
    'findutils' \
    'flex' \
    'g++' \
    'gawk' \
    'gcc' \
    'gettext' \
    'git' \
    'grep' \
    'gzip' \
    'intltool' \
    'libxslt' \
    'linux-headers' \
    'make' \
    'musl-fts-dev' \
    'musl-libintl' \
    'musl-obstack-dev' \
    'ncurses-dev' \
    'openssl-dev' \
    'patch' \
    'perl' \
    'python3-dev' \
    'rsync' \
    'tar' \
    'unzip' \
    'util-linux' \
    'wget' \
    'zlib-dev' \
  && \
  ln -s '/usr/lib/libncurses.so' '/usr/lib/libtinfo.so' && \
  addgroup 'buildbot' && \
  adduser -s '/bin/bash' -G 'buildbot' -D 'buildbot'

USER buildbot
