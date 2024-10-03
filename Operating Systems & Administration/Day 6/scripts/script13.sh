#!/bin/bash

######################
# aim: "break" keyword
######################

i=1
while [ $i -le 10 ]
do
	if [ $i -eq 6 ]
	then
		break
	fi
	echo $i
	i=`expr $i + 1`
done
