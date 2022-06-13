#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: check given number is Prime number or not.

clear
echo
read -p "Enter a number: " num
echo
for(( i=2; i<=num/2; i++))
do
	if [ $((num%i)) -eq 0 ]
	then
		echo "Given number $num is not a Prime number"
		exit
	fi
done
echo "Given number $num is a Prime number"
echo


