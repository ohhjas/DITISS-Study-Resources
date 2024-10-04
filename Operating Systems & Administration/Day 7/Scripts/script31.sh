#!/bin/bash

######################
#	aim : Strings 
######################

# =		: true if both strings are equal
# !=	: true if both strings are not equal
# -n	: true if string is not empty
# -z	: true if string is empty

str="sunbeam"

if [ -z $str ]
then
	echo "str is empty"
else
	echo "str is not empty"
fi

str1=sunbeam
str2=pune

str=$str1$str2

echo "str = $str"

echo "3rd index onwards : ${str:3}"
echo "3rd index onwards 4 characters : ${str:3:4}"











