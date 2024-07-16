#! /bin/bash

echo "20.5+5" | bc # should use  "| bc" for make this float math work
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5/5" | bc
echo "20.5/5" | bc


echo "==================================================================="
echo "scale=20;20.5/5" | bc

num=27
echo "scale=2;sqrt($num)" | bc -l # scale for make code know, how many number can show after chomma
echo "scale=2;3^3" | bc -l
