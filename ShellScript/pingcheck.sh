#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: check ping status of hosts given in myhosts file

hosts="/home/shasha/shellscripts/myhosts"
clear
echo
echo -e  "\t==========================\tChecking the host connections at `$date`\t=========================="
for ip in $(cat $hosts)
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then 
		echo -e "\t$ip is up and running"
	else
		echo -e "\tUnable to connect to $ip"
	fi
done
echo

