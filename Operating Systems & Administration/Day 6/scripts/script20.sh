#!/bin/bash

######################################
# aim: Count current directory content
######################################

echo "-----------------Count of Current Directory Contents----------------"

count=0

echo -n "Current directory: " ; pwd

for entry in `ls`
do
	count=`expr $count + 1`
done

echo "Content count: $count"
