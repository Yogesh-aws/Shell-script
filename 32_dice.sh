#!/bin/bash

#Generating a random number between 1 to 6

no=$(( $RANDOM % 6 + 1 ))

echo "the number is: $no"
