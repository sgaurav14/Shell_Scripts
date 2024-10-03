#!/bin/bash

# script to randomly generate a number between 1-6 for dice

no=$(( $RANDOM % 6 +1 ))

echo "number is $no"
