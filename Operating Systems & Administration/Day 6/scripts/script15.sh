#!/bin/bash

###########################################
# aim : Check if the number is prime or not
###########################################

echo -n "Enter the number: "
read num

i=2
is_prime=1

while [ $i -le `expr $num / 2` ]
do
    if [ `expr $num % $i` -eq 0 ]
    then
        echo "$num is not a Prime Number"
        is_prime=0
        break
    fi
    i=`expr $i + 1`
done

if [ $is_prime -eq 1 ]
then
    echo "$num is a Prime Number"
fi
