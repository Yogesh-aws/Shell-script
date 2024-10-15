#!/bin/bash


read -p "enter the site name to check the connectivity: " site

ping -c 1 $site &> /dev/null 
#sleep 5s

if [[ $? -eq 0 ]]
then
	echo "successfully connected"
else
	echo "not connected"
fi

