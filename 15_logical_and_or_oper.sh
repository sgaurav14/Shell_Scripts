#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Execute condition 2 only when condition 1 is true else execute condition 3
# condition1 && condition 2 || condition 3

read -p "Enter your age: " age

[[ $age -ge 18 ]] && echo " You are Adult" || echo "You are Minor"
