#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 14th June,2022
#Use: Print fibonacci series

echo
echo "Enter how many fibonacci numbers you want"
read fibonacci
echo
a=0
b=1
for ((i=0; i<=$fibonacci; i++))
do
    echo $a
    fibo=$((a+b))
    a=$b
    b=$fibo
done
echo