#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: While loop to print numbers..

clear
echo
echo "give a number"
read num
echo
i=1
while [ $i -le $num ]
do
	echo $i
	((i++))	
done

echo

