#!/bin/bash

##################################
# aim: calculate area of rectangle
##################################

echo -n "Enter the length and breadth of rectangle :"
read l b

# command substitution
#	- in place of command its result or output is substituted
#	1. $(command)
#	2. `command`

area=`expr $l \* $b`

echo "Area of rectangle = $area"








































