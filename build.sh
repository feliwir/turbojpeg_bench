#!/bin/sh

echo "Downloading baseline turbojpeg"
git clone git@github.com:libjpeg-turbo/libjpeg-turbo.git jt_base

echo "Downloading avx512 turbojpeg"
git clone -b avx512-support git@github.com:feliwir/libjpeg-turbo.git jt_avx512

echo "Building baseline turbojpeg"
cmake -Bjt_base_build -Sjt_base
cmake --build jt_base_build

echo "Building avx512 turbojpeg"
cmake -Bjt_avx512_build -Sjt_avx512
cmake --build jt_avx512_build