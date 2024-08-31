#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Script to show how to use array in shell scripting

# storing values in array
myArray=( 1 3 7 40.3 Hello "Namaskar dosto!!" )

# To print all the values in the array
echo "All the values in my array are ${myArray[*]}"

# To print specific index value in a array
echo "The 3rd index value in this array is ${myArray[3]}"

# To check the length of my array
echo "The no of values in this array is ${#myArray[*]}"

# To print some values from some range in array
echo "Values from index 1-2 is ${myArray[*]:1:2}"

# Update our array with new values
myArray+=( NewValues 7007 Bye! )

# Printing the new array variables
echo "Printing the new array values ${myArray[*]}"
