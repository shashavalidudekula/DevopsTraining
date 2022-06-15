#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 12th Jun,2022
#use: Script to check given input is file/dir.. if it is a file display contentes, if it is a dir list no of files in dir

echo
read -p "Enter file/dir name: " name
echo
if [ -f $name ]          #checks given input is file or not
then
	cat $name 
	exit 0
fi

if [ -d $name ]        #checks given input is dir or not
then
	files=`find /home/shasha/shellscripts/interviewques/example/ -type f | wc -l`      #ouputs the number of files in the given dir.. you can change the path according to your fiels
	echo
	echo "You have $files files in your $name dir"
	echo
	echo "the files are"
	echo
	ls $name
	echo
	exit 0
fi

