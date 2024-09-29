#!bin/bash

#Array

array=( 12 44.5 hey "hey there" ram shayam 55 87 )

echo " Value of first array is ${array[1]} "

echo " All the values in array are ${array[*]} "

# lenght of an array

echo " Lenght of an array is: ${#array[*]} "

echo " Range of value: 		${array[*]:3:2} "

array+=( harry 66 namah )

echo " Updated value in array is ${array[*]} "


