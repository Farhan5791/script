#!/bin/bash

echo "===============User Creation================="

#read -p "Enter your full name: " name

#read -p "Enter your password: " password

read -p "Delete the usename: " del
#useradd -m $name 

#echo -e "$password"\n"$password" | passwd "$name"

#echo "$name:$password" | sudo chpasswd

userdel -rf $del

cat /etc/passwd | grep $del | wc #awk '{print $1}'


echo "=============User created=================="
