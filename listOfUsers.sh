#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Print the list of users in the system.

clear
echo
echo "List of users present in system"
echo
cut -d ":" -f 1 /etc/passwd | column
echo

