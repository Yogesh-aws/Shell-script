#!/bin/bash

if [[ "${UID}" -ne 0 ]]
then
echo "please run with root user previlage"
exit 1
fi


if [[ "${#}" -le 1 ]]
then
echo "please pass an argument ${0}"
exit 1
fi

user_name="${1}"
echo "username: $user_name"


shift
comment="${@}"

password=$(date +%s%N)
echo $password

useradd -c "${comment}" -m $user_name

if [[ $? -ne 0 ]]
then
    echo "user account is not created"
    exit 1
fi

echo ${user_name}:${password} | chpasswd

if [[ $? -ne 0 ]]
then
echo "password could not set"
exit 1
fi

passwd -e $user_name

echo
echo "Username: $user_name"
echo 
echo "Password: $password"
echo
echo "Hostname: $hostname"
