#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 12th Jun,2022
#use: Take filename from user and make copy of the file

read -p "Enter a file name: " file
echo
touch $file    #this will create a file with given name.
if [ $? -eq 0 ]
then
	echo "The file with name $file has been successfully created"
	exit 0
fi

