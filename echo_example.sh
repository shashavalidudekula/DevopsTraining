#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: echo command with options

clear
echo ""
echo "This is a line"
#-n option do not print the trailing newline.
echo -n "this is also a line"
# -e option is used to interpret the escape characters..
: ' \t ---> givea tab space,
\n ---> prints a new line from where it is used
\b ---> removes any spaces
\v ---> vertical tabspace
'	
echo -e "\t Here these \n back \nslashes \bWont be \bprinted on console, here \vi \vuse \vvertical tab option \nnew line"
echo
echo -e "Tecmint is a community of \aLinux Nerds"
echo

