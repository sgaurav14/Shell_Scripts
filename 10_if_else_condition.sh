#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Script to test how if else condition works

read -p "Enter your marks: " marks

if [[ $marks -gt 40 ]] # starting of if condition
then
	echo "You are Pass"
else
	echo "You are Failed"
fi                   #Closing of if condition
