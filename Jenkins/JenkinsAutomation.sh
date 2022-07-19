#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date:  19th July,2022
#Use: script for automating actions on jenkins jobs.


echo "Select a Choice"
echo "1 ==> List Jobs"
echo "2 ==> Build Job"
echo "3 ==> Delete Job"
echo "4 ==> Disable Job"
echo "5 ==> Enable Job"
echo "6 ==> Reload Job"

jenkinsUsername=shasha
jenkinsToken=1111b0abe9836087e0319b2b9a2ac13617
jenkinsUrl=http://3.108.236.3:8080/

echo "Enter your choice: "
echo
read choice 
echo

case $choice in

	1)
		echo 
		echo "Listing all jobs"
		echo "----------------"
		java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken  -webSocket list-jobs
		echo 
		;;
	
	2)
		echo
                echo "Enter the name of the job you want to build"
		read jobName
		echo
		echo "Building job $jobName"
                echo "----------------------"
                java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken  -webSocket build -v -s $jobName
                echo
                ;;	

	3)
		echo
                echo "Enter the name of the job you want to Delete"
		echo
                read jobName
		echo
                echo "Deleting job $jobName"
                echo "----------------------"
                java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken  -webSocket delete-job $jobName
                echo
                ;;
	
	
	4)
		echo
                echo "Enter the name of the job you want to Disable"
                echo
                read jobName
                echo
                echo "Disabling job $jobName"
                echo "----------------------"
		echo
                java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken -webSocket disable-job $jobName
                ;;
	
	5)
		echo
                echo "Enter the name of the job you want to Enable"
                echo
                read jobName
                echo
                echo "Enabling job $jobName"
                echo "----------------------"
                echo
                java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken -webSocket enable-job $jobName
                ;;

	6)
		echo
                echo "Enter the name of the job you want to Reload"
                echo
                read jobName
                echo
                echo "Reloading the job $jobName"
                echo "----------------------"
                echo
                java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken -webSocket reload-job $jobName
                ;;
	*)
		echo "Please select a valid choice"
		;;
esac


