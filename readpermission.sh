#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Check given file has read permission or not.

clear
echo
read -p "Enter the file name: " file
echo
if [ -r $file ]
then
	echo "The File $file has read permission"
else
	echo "The file $file doesn't have read permission"
fi
echo

