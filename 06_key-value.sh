#!/bin/bash
# Author: Siddhartha Gaurav
# Description: How to store key value pairs in array

# Declaring the key value array and storing the values
declare -A myArray
myArray=( [name]=Siddhartha [age]=28 [city]=Gorakhpur )

# Printing the above key value from array
echo "The author name is ${myArray[name]} and his age is ${myArray[age]} and he lives in ${myArray[city]}"
