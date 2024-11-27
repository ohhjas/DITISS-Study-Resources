#!/bin/bash

######################################
# aim: Print current directory content
######################################

echo "-----------------Current Directory Contents----------------"
for entry in `ls`
do
	echo $entry
done
