#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 13th Jun,2022
#use: Script to check the disk usage on server and email if disk usage is greaterthan 85%

echo "Reading Disk usage of root "
sleep 1
echo
x=`df | grep -i "/dev/xvda2" | awk '{print $5}' | cut -d % -f 1`
echo
if [ $x -lt 85 ]
then
	echo "the current disk usage is at: $x %"
    echo
else
	echo "disk usage is above 85%"
    mail -s "URGENT: Disk Threshold meets 85%" abc@xyz.com
fi
