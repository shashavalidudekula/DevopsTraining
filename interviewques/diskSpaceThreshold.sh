#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 13th Jun,2022
#use: Script to check the disk usage on server and email if disk usage is greaterthan 85%

echo "Reading Disk usage of root "
sleep 1
x=`df | grep -i "/dev/nvme0n1p3" | awk '{print $5}' | cut -d % -f 1`
echo -n "The current disk usage is at :" $x
echo
if [ $x -lt 85 ]
then
	echo "disk usage is $x"
else
	echo "disk usage is above 30%"
    mail -s "URGENT: Disk Threshold meets 85%" abc@xyz.com
fi
