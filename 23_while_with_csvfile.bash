#!/bin/bash

echo "id	name	age"
while IFS="," read id name age
do 
#	echo "id name age"
	echo "$id	$name	$age"
done < test.csv 
