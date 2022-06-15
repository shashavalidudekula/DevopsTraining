#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Rajesh
#Date: 13th June,2022
#Use: Print multiplication table of number given

echo
read -p "Enter the number for which you want multiplciation table: " num
echo
read -p "upto which number you want multiplication table: " uptonum
echo
for ((i=1;i<=$uptonum;i++))
do
echo "$num*$i = $(($num*$i)) "
done
echo