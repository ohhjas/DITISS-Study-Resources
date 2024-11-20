#!/bin/bash

#################################
# aim: Implement basic calculator
#################################

# case $<variable> in
# 1|4)
#	...
#	;;
# 2)
#	...
#	;;
# *)
#	...
#	;;
# esac



echo -n "Enter two integer operands: "
read op1 op2

echo -e "1. Addition \n2. Subtraction"
echo -n "Enter your choice: "
read choice

res=0

case $choice in
	1|one)
		res=`expr $op1 + $op2`
		;;
	2|two)
		res=`expr $op1 - $op2`
		;;
	*)
		echo "Invalid Choice"
		;;
esac

echo "Result = $res"





























