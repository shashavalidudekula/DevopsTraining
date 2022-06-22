#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 21 June,2022
#Use: Automation of Github Admin Tasks

##### change <TOKEN> with your perosnal access token. 
##### change the organization to your own
#####


echo 
echo "============= Enter your choice ==============="
echo
echo "1 ==> List all Teams in Organizations"
echo "2 ==> Create a Team"
echo "3 ==> Delete a Team"
echo

read choice

case $choice in
    
    1)
    echo
    echo "The existing Teams are ..."
    echo
    curl \
        -s -S -H "Accept: application/vnd.github.v3+json" -H "Authorization: token <TOKEN>" https://api.github.com/orgs/<ORG>/teams | grep -w "name" | awk '{print $2}' | grep -v teams | sed 's/"*"//g' | cut -d "," -f 1
    ;;

    2)
        echo 
        echo "Give a name for your new team: "
        read teamname
        echo 
        echo "Checking whether given team $teamname exists or not..."
        sleep 1
        echo "..."
        echo
        

        #============= this will list all the team names in given organization and redirect names to listOfteam.txt file
        curl \
        -s -S -H "Accept: application/vnd.github.v3+json" -H "Authorization: token <TOKEN>" https://api.github.com/orgs/<ORG>/teams | grep -w "name" | awk '{print $2}' | grep -v teams | sed 's/"*"//g' | cut -d "," -f 1 > listOfteam.txt

        #check the given team name in the listOfteam.txt file
        grep -ix $teamname listOfteam.txt > /dev/null

        if [ $? -eq 0 ]                        #if name exists it shows already exists
        then
            echo
            echo "$teamname already exists"
            exit 0
        else 
            echo "Creating team..."       
            echo
            echo "Give description for your $teamname : "
            read teamdesc
            echo
            echo "select a privacy option for team $teamname. (closed/secret) ?"
            read privacy          
            echo 
            curl \
            -s -S -H "Accept: application/vnd.github.v3+json" -H "Authorization: token <TOKEN>" https://api.github.com/orgs/<ORG>/teams -d '{"name":"'$teamname'","description":"'$desc'","privacy":"'$privacy'"}'
            echo
            echo "Team $teamname created successfully."
        fi
        ;;

    3)
        echo 
        echo "Give a team name to delete: "
        read teamname
        echo
        echo "Checking $teamname exists or not..."
        sleep 1
        echo "..."

        #============= this will list all the team names in given organization and redirect names to listOfteam.txt file
        curl \
        -s -S -H "Accept: application/vnd.github.v3+json" --user shashavalidudekula:<TOKEN> https://api.github.com/orgs/<ORG>/teams | grep -w "name" | awk '{print $2}' | grep -v teams | sed 's/"*"//g' | cut -d "," -f 1 > listOfteam.txt

        #check the given team name in the listOfteam.txt file
        grep -ix $teamname listOfteam.txt > /dev/null

        if [ $? -eq 0 ]                     
        then
            echo "Deleting team..."                  
            echo 
           curl \
            -X DELETE \
            -s -S -H "Accept: application/vnd.github.v3+json" -H "Authorization: token <TOKEN>" https://api.github.com/orgs/<ORG>/teams/$teamname
            echo
            echo "team $teamname is deleted successfully."
        else
            echo "incorrect team name."
        fi
        ;;
    *)
    echo 
    echo "You have entered wrong choice"
    echo
    echo -e "Usage: \n1 ==> Listing teams \n2 ==> Create a team \n3 ==> Delete a team"
    echo
    ;;
esac
