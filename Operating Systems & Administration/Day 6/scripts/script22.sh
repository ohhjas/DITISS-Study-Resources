#!/bin/bash

###############################################################################################################
# aim: If the path is a regular file then print its size and if the path is a directory then print its contents
################################################################################################################

# we use file conditonals to do so.
# -e $name or $path : true if path exists, false if path doesn't exists.
# -f $name 			: true if name is regular file
# -d $name			: true if name is a directory
# -p
# -s
# -l
# -c
# -b 
# -r $name			: true if name has read permissions
# -w $name			: true if name has write permissions
# -x $name			: true if name has execute permissions

echo -n "Enter the path : "
read path

if [ -e $path ]
then
	echo "$path exists"
	if [ -f $path ]
	then
		echo "$path is a regular file"
		stat -c "size = %s" $path
	elif [ -d $path ]
	then
		echo "$path is a directory"
		ls $path
	else
		echo "$path is not a regular file or directory"
	fi	
else
	echo "$path doesn't exists"
fi
