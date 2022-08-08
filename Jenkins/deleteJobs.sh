#!/bin/bash
#Delete multiple Jenkins jobs at a time

jenkinsUrl=<url>
jenkinsUsername=<username>
jenkinsToken=<token>


java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUsername:$jenkinsToken  -webSocket list-jobs > jobslist
echo 

jobs=$(cat jobslist)

echo "Deleting the Jenkins Jobs"
echo "========================="

for job in $jobs
do
    java -jar jenkins-cli.jar -auth $jenkinsUsername:$jenkinsToken -s $jenkinsUrl -webSocket delete-job $job
done 
