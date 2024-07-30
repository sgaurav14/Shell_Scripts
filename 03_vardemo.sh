#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Script to show how to use variables

# Setting hardcoded variable values
no=7
name="Siddhartha"
age=28

# Displaying these hardcoded variables
echo "My name is $name and my age is $age. My lucky no is $no"

# let's override the variable value of name. Set some other name
name="Gaurav"

echo "My name is $name"  # We see that value will be overwritten on a var

# Variable to store the output of a command
HOSTNAME=$(hostname)
echo "The name of this machine is $HOSTNAME"
