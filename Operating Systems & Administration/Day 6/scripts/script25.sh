#!/bin/bash

###################################
# aim: select compound command/loop
###################################

# select name in collection
# do
#	body
#done

select color in White Black Blue Pink Yellow Red Green
do
	echo $color
done
