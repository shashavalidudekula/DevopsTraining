#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 13th June,2022
#Use: Find and list the unique shells used by users in /etc/passwd
#     print the no.of users using each shell

echo
echo "The list of unique shells using by users are : "
echo
cat /etc/passwd | cut -d ":" -f 7 | awk '!_[$0]++' > shells.txt      #redirecting the unique shells list to shells.txt
cat shells.txt                                                       #priting the unique shells list
echo
while read p; do
        num=`grep -i "$p" /etc/passwd | wc -l`                      #assigning no of users using each shells to "num" variable
  echo "the number of users using the shell $p are : $num"
done <shells.txt                                                    #looping through the shells.txt
echo
