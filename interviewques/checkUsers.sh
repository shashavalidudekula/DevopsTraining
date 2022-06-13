#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 13th Jun,2022
#use: Script for checking given users are present or not

echo
for i in $@                #passing command line args to for loop using $@
do
        grep -i $i /etc/passwd > /dev/null    #check users are present in /etc/passwd (users file) and curbing the output to null.
        if [ $? -eq 0 ]
        then
                echo "$i - Present"
        else
                echo "$i - Not present"
        fi
done
echo
