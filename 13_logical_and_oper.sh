#!/bin/bash
# Author: Siddhartha Gaurav
# Description: Shell script to learn AND (&&) operator

read -p "What is your age? " age
read -p "From which country you are? " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can vote in India"
else
	echo "You are not a valid voter"
fi
