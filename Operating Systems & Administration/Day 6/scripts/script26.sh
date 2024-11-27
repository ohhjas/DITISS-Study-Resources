#!/bin/bash

#####################################
# aim: Basic calcualtor using select
#####################################

# !=	: true if strings are not equal
# =		: true if strings are equal

select choice in Exit Add Sub Mul Div
do
	if [ $choice != "Exit" ]
	then
		echo -n "Enter two numbers: "
		read num1 num2
	fi

	case $choice in
		Add)
			echo "$num1 + $num2 = `expr $num1 + $num2`"
			;;
		Sub)
            echo "$num1 - $num2 = `expr $num1 - $num2`"
            ;;
		Mul)
            echo "$num1 * $num2 = `expr $num1 \* $num2`"
            ;;
		Div)
            echo "$num1 / $num2 = `expr $num1 / $num2`"
            ;;
		Exit)
            exit
	esac

done
