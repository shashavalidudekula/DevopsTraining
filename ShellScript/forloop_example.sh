#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: print numbers with given interval using for loop.


clear
echo
echo "Enter a number"
read num
echo
echo "Enter interval"
read interval
echo
echo "========================== Printing upto $num with $interval interval =========================="
echo
for (( i=0; i<$num; i=i+$interval ))
do
	echo -e "\t$i"     #\t adds horizontal tab space befor the number.
	sleep 1      #sleeps 1 second before printing another next number.
done
echo

