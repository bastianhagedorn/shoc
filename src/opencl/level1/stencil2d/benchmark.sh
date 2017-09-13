#!/bin/bash
if [ "$#" -ne 3 ]; then
	echo "Illegal number of parameters (enter platform and device id and inputsize (1024 or 8192)"
	exit -1
fi
./Stencil2D --passes 100 --customSize $3,$3 --lsize 4,128 --weight-center 0.25 --weight-cardinal 0.15 --weight-diagonal 0.05 --num-iters 1 --platform $1 --device $2 > measurements/shoc.raw
cd measurements
./cleanse.sh
cat shoc.raw | grep Chose 
cat shoc.raw | grep CL_DEVICE_MAX_COMPUTE_UNITS
cat shoc.out
