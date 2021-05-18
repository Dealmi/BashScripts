#!/bin/bash
#set -x #debugging on 
#This script reads accounts.csv file and creates 
#a fixed file (accounts_new.csv) in a same directory where first letters 
#of names and surnames are capital and updated emails
#!!! Warning: script should be in the same directory as accounts.csv file!

#File name
fileName=accounts_cut.csv

#Declaring an associative array where all accounts will be kept
declare -A accounts

#Counting the number of rows in the accounts.csv
numRows=$(cat $fileName | wc -l)

#Number of columns in the file, devided by commas
numColumns=8

#reading accounts.csv into array without a header row
for ((row=2;row<=numRows;row++)) do
    for ((col=1;col<=numColumns;col++)) do
       read -d, -r name
       name=$(echo $name | sed 's/\r//'| sed 's/\n//') #stripping trailing carriage return and newline
       echo name: $name
       accounts[$row,$col]="$name"
    done  
done < $fileName


echo 
echo size of the array is ${#accounts[@]}
echo 
echo Array looks like this: $(declare -p accounts)



#while read name
#do 
#   accounts+=("$name")
#done < $1


