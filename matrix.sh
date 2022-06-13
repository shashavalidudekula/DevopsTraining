#!/bin/bash
#Purpose: Bash Scripting Training
#Author: Shashavali
#Date: 9th June,2022
#Use: Print matrix 


clear
echo
echo "========================================== Taking input for custom matrix =========================================="
echo
read -p "How many rows you want? " rows
echo
read -p "How many columns you want? " columns
echo
echo "Enter `expr $rows \* $columns` numeric values divided by space"
echo
read -a matrix
echo
echo "========================================== Printing the matrix =========================================="
echo
for(( i=0; i<rows; i++))
do
	for(( j=0; j<columns; j++))
	do
		index=$((i*columns+j))
		echo -n "$((matrix[$index])) "
	done
	echo
done
echo


