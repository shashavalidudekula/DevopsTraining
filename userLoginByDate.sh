#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 10th June,2022
#Use: print which users are logged in given date

echo
#echo "Enter a day (e.g Mon): "
#read day
echo
echo "Enter a month (e.g Nov): "
read month
echo
echo "Enter a Date (e.g 3): "
read date
echo
if [ $date -lt 10 ]   # if the date is lessthan 10
then
	date=" $date"    #if date is lessthan 10 adds a space before date. it will help in matching the pattern in grep command.
fi


echo "The logged in users on $month $date are: "
echo
last | grep -i "$month $date"               #add $day before month if you want to search using day of the week.


