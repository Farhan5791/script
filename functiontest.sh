#!/bin/bash


function delete {
read -p "user delete is: " del
	userdel -rf $del

	count=$(cat /etc/passwd | grep $del | wc | awk {'print $1'} )

	if [ $count -eq 0 ];
	then
		echo "user is is not deleted"
	else
		echo "user  deleted"

	fi

}

delete
delete
delete
delete
