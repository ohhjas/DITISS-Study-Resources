#!/bin/bash

#################
# aim:
#################

echo -n "Enter the radius of circle: "
read radius

area=`echo "3.142 * $radius * $radius" | bc`

echo "Area of circle is $area"
