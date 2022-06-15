#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Print factorial of a given number

clear
echo
factorial=1
for(( i=1; i<=$1; i++))
do
	factorial=$((factorial*i))
done
echo
echo "The factorial of $1 is : " $factorial
echo

