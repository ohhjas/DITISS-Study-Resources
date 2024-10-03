#!/bin/bash

############################################
# aim: Count the number of executable files
############################################

count=0

echo -n "Executable files in " ; pwd

for name in `ls`
do
	if [ -f $name -a -x $name ]
	then
		echo $name
		count=`expr $count + 1`
	fi
done

echo "Count of executable files : $count"
