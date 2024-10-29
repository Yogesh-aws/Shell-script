#!/bin/bash
# Script should be execute with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with root user "
	exit 1
fi



# user should provide atleast one argument as username else guide him
if [[ "${#}" -lt 1 ]]
then 
	echo "usage: ${0} USER_NAME [Comment]..."
	echo "Create a user with name User_Name and comments"
	exit 1
fi



# Store 1st argument as user name
user_name="${1}"
echo $user_name



# In case of more than one argument, store it as a comment
shift
comment="${@}"



# Creating a password
password=$(date +%s%N)
echo $password



#create the user
useradd -c "${comment}" -m $user_name



# check if user is successfully created or not
if [[ $? -ne 0 ]]
then 
	echo "the user account is not created"
	exit 1
fi



# setting the password
echo ${user_name}:${password} | chpasswd



# check if password is successfully set or not
if [[ $? -ne 0 ]]
then 
	echo "password could not be set"
	exit 1
fi



# force password to change in first login
passwd -e $user_name



# display the username password 
echo 
echo "Username: $user_name"
echo
echo "Password: $password"
echo
echo "hostname: $hostname"









