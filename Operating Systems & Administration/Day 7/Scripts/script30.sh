#!/bin/bash

######################
#	aim : find sum and maximum of array elements 
######################

arr=(5 3 6 8 2 1)

echo "Number of element : ${#arr[*]}"
echo "arr : ${arr[*]}"

echo "arr[0] = ${arr[0]}"
echo "arr[2] = ${arr[2]}"
echo "arr[3] = ${arr[3]}"
echo "arr[4] = ${arr[4]}"

echo "elements from 2nd index : ${arr[*]:2}"
echo "3 elements from 2nd index : ${arr[*]:2:3}"

sum=0

i=0
while [ $i -lt ${#arr[*]} ]
do
	sum=`expr $sum + ${arr[$i]}`
	i=`expr $i + 1`
done

echo "Array sum = $sum"

max=0
for ele in ${arr[*]}
do
	if [ $ele -gt $max ]
	then
		max=$ele
	fi
done

echo "Maximum value = $max"












