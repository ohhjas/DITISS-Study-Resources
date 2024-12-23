#!/bin/bash

######################
#	aim : Arrays
######################

declare -a arr

arr[0]=10
arr[1]=20
arr[2]=30

echo "arr = ${arr[*]}"		# "10 20 30"
echo "arr = ${arr[@]}"		# "10" "20" "30"

arr[3]=40

echo "arr = ${arr[*]}"		# "10 20 30 40"
echo "length = ${#arr[*]}"		
echo "length = ${#arr[@]}"		
















