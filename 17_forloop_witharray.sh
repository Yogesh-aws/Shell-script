#!/bin/bash


arr=( 1 2 3 hi "hello world" )

len=${#arr[*]}

for (( i=0;i<len;i++ ))
do
	echo "Value in array is: ${arr[i]} "
done

