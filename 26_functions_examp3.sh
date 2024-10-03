#!/bin/bash

# defining addition function

addition () {
	num1=$1
	num2=$2
	let sum=$num1+$num2

	echo "Sum of $1 and $2 is $sum"
}

addition 5 3

