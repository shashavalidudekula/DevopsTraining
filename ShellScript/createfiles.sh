#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Create files with user input.

clear
echo
echo "How many files you want to create: "
read num
echo
echo "Enter the starting name of the file "
read name
echo
for j in $(seq 1 $num)
do
	touch $name$j.txt
	echo "$name$j.txt created"
done
echo

