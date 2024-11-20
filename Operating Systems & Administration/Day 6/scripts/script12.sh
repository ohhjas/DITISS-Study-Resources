#!/bin/bash

###################################
# aim: Print table of given number
###################################

# initialisation
# while [ condition ]
# do
#	body
#	modification
# done

echo -n "Enter the number: "
read num

index=1                                # initialisation

while [ $index -le 10 ]                # condition
do
	res=`expr $num \* $index`		   # body
	echo "$num * $index = $res"
	index=`expr $index + 1`			   # modification
done
