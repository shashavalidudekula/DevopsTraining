#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 12th Jun,2022
#use: Script to check given file has permissions or not.. if not assign respective permissions

echo
read -p "Enter a file name: " file
echo
echo "=============================================== Checking read Permissions ==============================================="
sleep 1
sleep 1
echo
if [ -r $file ]
then
	echo " File $file has read permission"
	echo
else
	echo "File $file doesn't have read permission"
	sleep 1
	echo
	echo "Assigning read permission to $file" 
	sleep 1
	echo "..."
	sleep 1
	echo "..."
	sleep 1
	chmod a+r $file
	echo "Successfully assigned read permission to $file"
	sleep 1
	
fi
echo
echo "=============================================== Checking write Permissions ==============================================="
sleep 1
sleep 1
echo
if [ -w $file ]
then
        echo " File $file has write permission"
        echo
else
        echo "File $file doesn't have write permission"
        sleep 1
	echo
        echo "Assigning write permission to $file"
        sleep 1
        echo "..."
        sleep 1
        echo "..."
        sleep 1
        chmod a+w $file
	echo
        echo "Successfully assigned write permission to $file"
	sleep 1
fi
echo
echo "=============================================== Checking execute Permissions ==============================================="
sleep 1
sleep 1
echo
if [ -x $file ]
then
        echo " File $file has execute permission"
        echo
else
        echo "File $file doesn't have execute permission"
        sleep 1
	echo
        echo "Assigning execute permission to $file"
        sleep 1
        echo "..."
        sleep 1
        echo "..."
        sleep 1
        chmod a+x $file
        echo
	echo "Successfully assigned execute permission to $file"
	sleep 1
fi
echo
echo
sleep 1 
sleep 1
echo "Showing the file with permission"
echo
ls -l $file
echo



