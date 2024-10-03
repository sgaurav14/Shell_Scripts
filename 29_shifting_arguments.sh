#!/bin/bash

# will take user add example to test shifting arguments where it will pick 1st passed args as one arguments and will place all other passed args to 2nd arg

echo "Creating user"
echo "Username is $1"
shift
echo "Description is $@"

