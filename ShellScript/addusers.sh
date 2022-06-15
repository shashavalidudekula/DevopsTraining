#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 11th June,2022
#Use: Add users with user input and display user details upon successful creation of user.

clear
echo
read -p "Please Enter a user name to add: " user
echo
grep -q -w $user /etc/passwd
if [ $? -eq 0 ]
then
	echo "Error... $user user has already exists..."
	echo
	exit 0
fi
echo "Please give a description for the $user user : "
read desc
echo
echo "Do you want to specify a UID? (y/n) "
read yn
echo
if [ $yn == y ]
then
	echo "Please give a UID greater than 1005"
	read uid
	grep -q $uid /etc/passwd
	if [ $? -eq 0 ]
	then
        	echo "Error... $uid already exists..."
        	echo
        	exit 0
	fi
	useradd $user -c "$desc" -u "$uid"
	echo
	echo "User $user has been created successfully with specified UID $uid"

elif [ $yn == n ]
then
	echo "User will be created with system defined UID"
        useradd $user -c "$desc"
        echo
        echo "User $user has been created successfully with system specified UID"
fi
