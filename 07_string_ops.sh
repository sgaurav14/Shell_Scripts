#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Script to show some string operations

myvar="Hey Buddy, how are you?"

# To get the length of our string
myVarLength=${#myvar}
echo "The length of the given string is ${myVarLength}"

# To convert the given string to uppercase
echo "The upper case version of our string is ---- ${myvar^^}"

# To convert the given string to lowercase
echo "The lower case version of our string is --- ${myvar,,}"

# To replace the string
replacedVar=${myvar/Buddy/Sid}  # Replacing buddy with sid in the value stored in myvar
echo "The replaced var is ${replacedVar}"

# To slice a string
echo "The sliced value from index 4 and the 5 index from this value is ${myvar:4:5}"
