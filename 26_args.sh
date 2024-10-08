#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "please provide arguments"
	exit 1
fi

echo "first argument $1"
echo "second argument $2"

echo "all the arguments		$@"
echo "number of arguments 	$#"

for file in $@
do
	echo "coping file $file"
done
