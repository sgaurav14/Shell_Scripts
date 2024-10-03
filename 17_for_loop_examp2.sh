#!/bin/bash

# for loop example where vlaues are iterated from a file

names="/root/Shell_Scripts/names.txt"

for j in $(cat $names)
do
	echo $j singh
done
