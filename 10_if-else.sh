#!bin/bash


read -p "enter your marks: " marks

if [[ $marks -gt 40 ]]
then
	echo "You are pass"
else
	echo "You are fail"
fi


