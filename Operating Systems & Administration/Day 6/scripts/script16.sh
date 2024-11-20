#!/bin/bash

##################################
# aim: Print table of given number
##################################

# initialisation
# unitl [ condition ]
# do
# 	body
#	modification
# done

echo -n "Enter the number: "
read num

echo "Table of $num : "

i=1

until [ $i -eq 11 ]
do
	echo "$num * $i = `expr $num \* $i`"
	i=`expr $i + 1`
done
