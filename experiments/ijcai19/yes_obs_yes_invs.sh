#!/bin/bash
declare -a arr=("blocks" "driverlog" "ferry" "floortile" "grid" "gripper" "hanoi" "npuzzle" "parking" "transport" "zenotravel")

ulimit -t 1000
rm results_yes_yes.txt

LANG=en_US

touch results_yes_yes.txt

for d in "${arr[@]}"
do
   ../../src/experimenter_FAMA.py -f -i ../../benchmarks/ijcai19/$d/ 0 20 80 -t ten-observation -avg 10 >> results_yes_yes.txt
done