#!/bin/bash


# AND operator

read -p "enter your age: " age
read -p "enter your country: " country

if [[ $age -ge 18 ]] && [[ $country == "india" ]]
then 
	echo "You can vote"
else
	echo "You cannot vote"
fi

