#!/bin/bash


file=/home/add/shell/filecheck.txt

if [[ -f $file ]]
then
	echo "file exits"
else
	echo "Creating file"
	touch $file
fi

