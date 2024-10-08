#!/bin/bash

for i in {1..10}
do 
	if [[ $i -eq 5 ]]
	then
		echo "continue the loop"
		continue
	else
		echo "$i"
	fi
done

