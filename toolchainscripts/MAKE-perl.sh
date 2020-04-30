#!/bin/bash
set -e
set -x

export LFS="/mnt/lfs"
export LFS_TGT=$(uname -m)el-lfs-linux-gnu
export LFS_BLD=mips64el-redhat-linux-gnu 
export BUILD64="-mabi=64 -march=mips64r2 -mtune=loongson3a"


rm -rf /tmp/build/perl-5.30.2
cp /mnt/sources/perl-5.30.2.tar.xz  /tmp/build/
cd /tmp/build/
tar -xvf perl-5.30.2.tar.xz ;cd perl-5.30.2
ls

#bash Configure -des -Dprefix=/tools -Dlibs=-lm -Uloclibpth -Ulocincpth
./Configure -des -Dprefix=/tools
make
#make
