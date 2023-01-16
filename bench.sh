#!/bin/sh

./jt_base_build/tjbench vgl_6434_0018.ppm 95 -rgb -nowrite -warmup 10
./jt_avx512_build/tjbench vgl_6434_0018.ppm 95 -rgb -nowrite -warmup 10