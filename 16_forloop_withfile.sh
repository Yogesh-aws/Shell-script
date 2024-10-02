#!/bin/bash

FILE=/home/add/shell/name.txt

for name in $(cat $FILE)
do
	echo "$name"
done

