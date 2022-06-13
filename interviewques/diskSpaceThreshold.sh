
#!/bin/bash
#Purpose: Bash Scripting Training
#Author : Shashavali
#Date: 13th Jun,2022
#use: Script to check the disk usage on server and email if disk usage is greaterthan 85%

echo "Reading Disk usage of root "
sleep 1
echo
disk=`df | grep -i "/dev/xvda2" | awk '{print $5}' | cut -d % -f 1`    #/dev/xvda2 changes according to respective systems.
if [ $disk -lt 85 ]
then
        echo "the current disk usage is at: $disk %"
else
        echo "Disk usage is above 85%"
        echo
        echo "Sending an email to admin"
        echo
        sleep 1
        echo "..."
        sleep 1
        echo "..."
        sleep 1
        echo "disk usage is above 85%" | mail -s "URGENT: Disk Threshold meets 85%" shasha@ip-172-31-1-18.ap-south-1.compute.internal    #email id changes 
        if [ $? -eq 0 ]
        then
                echo "Mail sent successfully"
        else
                echo "unable to send mail"
        fi
fi