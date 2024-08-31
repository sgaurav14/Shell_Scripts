#!/bin/bash
# Author: Siddhartha Gaurav
# Description: how to use OR (||) operator in scription

read -p "Have you booked Uber? " uber
read -p "Have you booked Ola? " ola

if [[ $uber == "yes" ]] || [[ $ola == "yes" ]]
then
	echo "Welcome to the cab service. You can travel"
else
	echo "You cannot travel"
fi
