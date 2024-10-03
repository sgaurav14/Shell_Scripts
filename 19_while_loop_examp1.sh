#!/bin/bash

# while loop basic example

count=0
num=10

while [[ $count -le $num ]]
do
	echo "Number are $count"
	let count++
done
