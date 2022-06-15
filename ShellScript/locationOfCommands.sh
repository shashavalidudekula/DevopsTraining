#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Check the location of Commands binary files..

clear
echo
echo "Enter a Linux Command Name"
read cmd
echo
location=`whereis $cmd`
echo "The binary files location of $cmd is: " $location
echo

