#!/bin/bash

########################################################
# aim: Print table of a given number using for each loop 
########################################################

# for var in collection
# do
#	done
# done

echo -n "Enter the number : "
read num

for i in `seq 10`
do 
	echo "$num * $i = `expr $i \* $num`"
done
