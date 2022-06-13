#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Swap given numbers/strings

clear
echo
echo "========================================== Give any two numbers/strings =========================================="
echo
echo "Enter 1st string/number"
echo
read swap1
echo
echo "Enter 2nd string/number"
echo
read swap2
echo
echo "========================================== Input Before Swapping =========================================="
echo
echo $swap1
echo
echo $swap2
echo
temp=$swap1
swap1=$swap2
swap2=$temp

echo "========================================== Input After Swapping =========================================="
echo
echo $swap1
echo 
echo $swap2
echo

