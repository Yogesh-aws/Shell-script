#!/bin/bash

echo "A for see date"
echo "B for see list of file in directory"
echo "C to see present working directory"

read -p "enter a value:" choice
 
case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
        *)echo "wrong input "
esac

