#!/bin/bash


read -p "check user status:- " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ];
then
	echo "user does not exist"

else
	echo "user is exist"

fi
