#!/bin/bash

# while loop example reading content from a file

while read myvar  # reading the myvar variable
do
	echo $myvar
done < names.txt  # giving the names.txt file as a input to myvar variable
