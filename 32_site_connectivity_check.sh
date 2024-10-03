#!/bin/bash

# script to check the site connectivity via ping command

read -p "Which site do you want to check? " site

ping -c 1 $site

if [[ $? -eq 0 ]]
then 
	echo "The site $site is reachable"
else
	echo "The site $site is not reachable"
fi
