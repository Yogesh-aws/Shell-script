#!/bin/bash


echo "enter number the following no"
echo "1 for addtion"
echo "2 for subtraction"
echo "3 for multiplication"
echo "4 for division"

read -p "enter your choice: " i 


add()
{
	let sum=$1+$2 
	echo "addition is: $sum"
}

sub()
{
	let result=$1-$2
	echo "subtraction is: $result"
}

multi()
{
	let result=$1*$2
	echo "multiplication is: $result"
}

div()
{
	let result=$1/$2
	echo "division is: $result"
}




if [[ $i -eq 1 ]]
then
	echo "add"
	add 5 5 

elif [[ $i -eq 2 ]]
then
	echo "subtract"
	sub 5 5

elif [[ $i -eq 3 ]]
then
	echo "multiply"
	multi 5 5

elif [[ $i -eq 4 ]]
then
	echo "division"
	div 5 5

else
	echo "wrong number choice"
fi


