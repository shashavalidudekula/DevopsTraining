#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Check given number is Odd or Even Number

clear
echo
read -p "Enter a number: " num
echo
if [ $((num%2)) -eq 0 ]
then
	echo "Given number $num is Even Number"
else
	echo "Given number $num is Odd Number"
fi
echo

