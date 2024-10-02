#!/bin/bash

##################################
# aim : find max of two numbers
##################################

# if [condtion]
# then
#    .....
# else
#    .....
# fi

# if [condition]
# then
#    .....
# elif [condition]
# then
#    .....
# else
#    .....
# fi

# Relational Operators
# -eq, -ne, -lt, -gt, -le, -ge

# Logical Operatots
# -a, -o, !
#    .....
# fi

# if [condtion]
# then
#    .....
# else
#    .....
# fi

# if [condition]
# then
#    .....
# elif [condition]
# then
#    .....
# else
#    .....
# fi

# Relational Operators
# -eq, -ne, -lt, -gt, -le, -ge

# Logical Operatots
# -a, -o, !


echo -n "Enter two numbers: "
read num1 num2

if [ $num1 -gt $num2 ]
then
	echo "num1 is greater"
	max=$num1
else		
	echo "num2 is greater"
	max=$num2
fi

echo "Maximum value = $max"
































