#!/bin/bash

######################
#	aim : Positional Parameters
######################

# arguments/values passed from command line to our script
# ./script27.sh 10 A sunbeam 3.142
# $*	:	all positional parameters
# $#	:	 number of positional parameters
# $1, $2, $3 ...	:	positional parameters individually
#	$1 - 10
#	$2 - A
#	$3 - sunbeam
#	$4 - 3.142
# $0 - ./script27.sh	:	name of the script
# $$ - process ID of current shell

echo "Positional Parameters : $*"

echo "Name of script : $0"
echo "Process ID : $$"
echo "Number of positional Parameters : $#"
echo "1st Parameter : $1"
echo "2nd Parameter : $2"
echo "3rd Parameter : $3"
echo "4th Parameter : $4"



















