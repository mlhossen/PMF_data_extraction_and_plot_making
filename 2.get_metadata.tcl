#!/bin/sh
touch master
for i in $(seq 0.8 0.35 1.5)
do

echo "win${i}.dat ${i} 12.245"  >> metadata.dat

done
