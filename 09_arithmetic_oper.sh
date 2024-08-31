#!/bin/bash
# Author: Siddhartha Gaurav
# Description: How to use arithmetic operations in shell script

read -p "Enter the value of x: " x
read -p "Enter the value of y: " y

echo "The addition of x and y is  $(( $x + $y ))"
echo "The difference of x and y is $(( $x - $y))"
echo "The multiplication of x and y is $(( $x * $y ))"

