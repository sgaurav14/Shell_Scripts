#!/bin/bash

###################################################################################

# Author: Siddhartha Gaurav
# Task Name: This script will list and give all the details of the given directory

###################################################################################

echo "Welcome to the Interactive File and Directory Explorer!"

read -p "Enter the directory path which you want to explore: " value

# checking string is empty or not
if [ -z "$value" ]
then
  echo "Exiting the Interactive Explorer. Goodbye!"
else
  echo "You want to explore the $value directory"
  echo
  echo "Below is the list of files and directories in $value directory:"
  echo
  echo "There are `ls -l $value | grep ^- | wc -l` files in $value directory"
  echo "There are `ls -l $value | grep ^d | wc -l` directories in $value directory"
  echo "There are `ls -l $value | grep ^l | wc -l` softlinks in $value directory"
  echo
  ls -l $value
fi

echo
read -p "Do you want to check the size of the $value directory and files? Enter yes or no:" response

if [ $response == "yes" ]
then
  echo "The $value directory size is `du -sh $value`"
  echo "Below are the size of files and directoris in $value directory: "
  du -h --max-depth=1 $value
  echo 
  echo "Thanks for using this file and directory explorer utility."
else
  echo "Ending the exploration session."
fi
