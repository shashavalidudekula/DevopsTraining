#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 13th June,2022
#Use: creates a backup of shellscripts dir in root home dir

tar -cvf /tmp/backup.tar /home/shasha/shellscripts                          #tar the files you want to backup
gzip /tmp/backup.tar                                                        #compress the tar again to save space
if [ $? -eq 0 ]
then
	echo " Backup created successfully"\
	echo
	echo "archiveing backup to ec2"                                                                                  
	scp /tmp/backup.tar.gz shasha@ec2-43-204-107-95.ap-south-1.compute.amazonaws.com:/home/shasha/             #creating a remote backup.. you can give any destination address here
else
	echo " Unable to create a backup"
fi
