#!/bin/bash

##########################################
# aim: calculate final price with discount
##########################################


echo -n "Enter unit price: "
read price

echo -n "Enter quantity of rice: "
read quantity

totalPrice=$(echo "$price * $quantity" | bc)
discount=0

if [ $quantity -gt 30 -a $quantity -le 50 ]
then
	discount=$(echo "$totalPrice * 0.05" | bc)
elif [ $quantity -gt 50 ]
then
	discount=$(echo "$totalPrice * 0.1" | bc)
fi

discPrice=$(echo "$totalPrice - $discount" | bc)

echo "Discounted Price = $discPrice"













































