#!/bin/bash
# Author: Siddhartha Gaurav
# Description: How to use case statement in scripting

echo "Hey choose any options from below"
echo "Enter a to see the current date"
echo "Enter b to list all the files in the current directory"
echo "Enter c to print the current working directory"

read choice

case $choice in
	a) echo "Today's date is: " `date` ;;
	b) echo "Below are the files present in the current working directory: " `ls` ;;
	c) echo "The present working directory is: " `pwd` ;;
	*) echo "Not a valid input!! Please enter correct value"
esac

