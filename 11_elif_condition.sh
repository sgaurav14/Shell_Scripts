#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Script to check how elif condition works

read -p "Enter your marks: " marks

if [[ $marks -ge 90 ]]
then
	echo "You are passed with 1st division"
elif [[ $marks -ge 70 ]]
then
	echo "You are passed with 2nd division"
elif [[ $marks -ge 50 ]]
then
	echo "You are passwd with 3rd division"
else
	echo "You are failed"
fi
