#!/bin/bash

#################################################
# aim: Print table of given number using For Loop
#################################################

# initialisation
# for (( init ; cond ; modification ))
# do
# 	body
#	modification
# done

echo -n "Enter the number: "
read num

echo "Table of $num : "

for (( i=1 ; i <=10 ; i++ ))
do
	echo "$num * $i = `expr $num \* $i`"
done
