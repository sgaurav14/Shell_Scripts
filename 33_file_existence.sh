#!/bin/bash

# script to check if a file exist or not

read -p "Enter the complete file path which you want to check? " path

if [[ -f $path ]]
then
	echo "File exist"
else
	echo "File not found!!"
fi
