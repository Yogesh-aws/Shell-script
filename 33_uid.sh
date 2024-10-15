#!/bin/bash


id=$UID

if [[ $id -eq 0 ]]
then
	echo "Root user"
else
	echo "Not a root user"
	fi

