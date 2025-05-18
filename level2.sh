#!/bin/bashi

# initialise variable
i=1

while [ $i -le 10 ] # ensure loop runs through 1-10
do
	echo "$i" # print number
	i=$(( $i + 1 )) # increase variable by 1 so we reach 11 and loop ends
done

