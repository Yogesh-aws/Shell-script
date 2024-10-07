#!/bin/bash

while read var
do
	echo "Names from file is $var"
done < name.txt
