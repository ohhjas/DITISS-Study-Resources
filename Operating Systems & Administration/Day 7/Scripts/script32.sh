#!/bin/bash

######################
#	aim : check string is palindrome or not
######################


echo -n "Enter string : "
read str

rstr=`echo $str | rev`

if [ $str = $rstr ]
then
	echo "$str is palindrome"
else
	echo "$str is not palindrome"
fi
















