#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 11th June,2022
#Use: list the process associated with given user.

echo
read -p "Enter the username : " user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
	echo "Listing the processes associated with $user below"
	echo
	ps -ef | grep -i $user
       echo 	
else
	echo "Error.. you have entered the wrong username"
	sleep 1
	echo "Exiting..."
	echo
fi
