#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 12th Jun,2022
#use: Take filename from user and check whether file is exist ot not..

echo
read -p "Enter a file name: " file
echo
[ -f $file ] && cat $file || echo "file $file doesn't exist"
echo


