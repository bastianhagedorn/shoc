#!/bin/bash
./Stencil2D --customSize 8192,8192 --lsize 4,128 --weight-center 0.25 --weight-cardinal 0.15 --weight-diagonal 0.05 --num-iters 1 --platform $1 > measurements/shoc.raw
cd measurements
./cleanse.sh
cat shoc.raw | grep Chose 
cat shoc.out
