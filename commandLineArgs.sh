#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Print any statement to console

clear
echo
echo "==================================================== Command Line Arguments example ===================================================="
echo
echo "filename:" $0    # $0 ---> this gives the filename
echo
echo "Number of arguments given:" $#       # $# ----> Gives the number of arguments given in command line
echo
echo "1st argumant:" $1    # $1 ----> Gives the first argument given... like this $n ---> Gives nth argument.
echo
echo "2nd argumant:" $2    # $1 ----> Gives the first argument given... like this $n ---> Gives nth argument.
echo
echo "3rd argumant:" $3    # $1 ----> Gives the first argument given... like this $n ---> Gives nth argument.
echo
echo "All arguments: " $*    # $* ---> Stores all arguments given in a single line
echo
echo $@                       # $@ ----> gives all arguments as separate words.
echo

