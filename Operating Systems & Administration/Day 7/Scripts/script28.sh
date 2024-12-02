#!/bin/bash

######################
#	aim : functions
######################

# function keyword is used to create function - optional
#	function name
# if function keyword is not used, need use '()'
#	name()
# body we can define in { ... }
# function arguments are accessed similar to positional parameters
# $1 - 1st arg, $2 - 2nd arg ....

function print_msg
{
	echo "This is our first function"
}

print()
{
	echo "number = $1"
	echo "string = $2"
}

addition()
{
	# $1 - op1
	# $2 - op2
	res=`expr $1 + $2`
	echo $res
}

print_msg
print 10 sunbeam
echo "1st param = $1, 2nd param = $2"
sum=`addition 10 20`
echo "sum = $sum"















