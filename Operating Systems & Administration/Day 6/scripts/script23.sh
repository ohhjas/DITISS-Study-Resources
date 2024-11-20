#!/bin/bash

#############################################################
# aim: count regular and directory files of current directory 
#############################################################

fcount=0
dcount=0

echo -n "Current Directory : " ; pwd

for entry in `ls`
do
	if [ -f $entry ]
	then 
		fcount=`expr $fcount + 1`
	elif [ -d $entry ]
	then
		dcount=`expr $dcount + 1`
	fi
done

echo "File Count : $fcount"
echo "Directory Count : $dcount"
