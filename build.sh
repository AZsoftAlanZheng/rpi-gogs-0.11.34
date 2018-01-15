#!/bin/bash
#
BASEDIR=$(dirname "$0")

pushd $BASEDIR

#download gogs binary
wget https://dl.gogs.io/0.11.34/raspi2_armv6.zip
OUT=$?
if [ $OUT -ne 0 ];then
   echo "wget failed"
   exit 111
fi

#unzip
unzip raspi2_armv6.zip
OUT=$?
if [ $OUT -ne 0 ];then
   echo "unzip failed"
   exit 112
fi

#build
docker build -t azsoftalanzheng/rpi-gogs-0.11.34-2 .
OUT=$?
if [ $OUT -ne 0 ];then
   echo "build failed"
   exit 111
fi

popd
