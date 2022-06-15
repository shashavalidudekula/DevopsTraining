#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: print numbers in triangel format.


clear
echo
echo "Enter a number"
read num
echo
echo "========================== Printing numbers in triangle format =========================="
echo
for (( i=0; i<=$num; i++ ))
do
	for (( j=0; j<i; j++ ))
	do
		echo -n "$j "
	done
	echo $i
done
echo

