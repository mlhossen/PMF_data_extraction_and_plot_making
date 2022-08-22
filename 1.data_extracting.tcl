#!/bin/sh

for i in $(seq 0.8 0.35 1.5)
do

awk '{print $1 "\t" $2}' win${i}.colvars.traj > win${i}.dat

done

