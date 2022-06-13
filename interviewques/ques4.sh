#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 12th Jun,2022
#use: Script to check given input is file/dir.. if it is a file display contentes, if it is a dir list no of files in dir

echo
read -p "Enter file/dir name: " name
echo
if [ -f $name ] 
then
	cat $name 
	exit 0
fi

if [ -d $name ]
then
	files=`find /home/shasha/shellscripts/interviewques/example/ -type f | wc -l`
	echo
	echo "You have $files files in your $name dir"
	echo
	echo "the files are"
	echo
	ls $name
	echo
	exit 0
fi

