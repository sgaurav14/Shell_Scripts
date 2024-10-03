#!/bin/bash

# another exmaple of args in shell script

echo "the number of arguments passed are " $#

for arg in $@  # it will pick each arguments as $@ means all the args
do
	echo "arguments given are $arg"
done
