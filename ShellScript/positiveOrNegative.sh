#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Check Given Number is Positive or Negative


clear
echo
read -p "Enter a number: " num
echo
if [ $num -gt 0 ]
then
	echo "Given number $num is Positive Number"
else
	echo "Given number $num is Negative Number"
fi
echo

