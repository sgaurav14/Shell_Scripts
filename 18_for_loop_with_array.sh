#!/bin/bash

# for loop example with values given in array

myvalue=( 1 2 3 Hi "Hello buddy!" 0.2 )
length=${#myvalue[*]}

for (( i=0; i<$length ; i++))
do
	echo "Value of array is ${myvalue[$i]}"
done
