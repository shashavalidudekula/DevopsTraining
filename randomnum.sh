#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Print random numbers given by users

clear
echo
echo "How many numbers you want"
read n
echo
echo "Enter $n numbers"
read -a nums
echo
for (( i=0; i<$n; i++ ))
do
	echo "${nums[$i]}"
done

