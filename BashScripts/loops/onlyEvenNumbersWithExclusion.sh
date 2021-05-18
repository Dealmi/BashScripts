#!/bin/bash

#Printing only  even numbers , excluding numbers in range 30-60
# The loop stops when numbers are greater than 85

#Original starting clause of the task wasn't working for me (bash v.4.4.19)
#so I had to change it a bit.
mapfile -t array <<< $(seq 1 100)
for item in ${array[*]}; do

# quit when the number is greater than 85
  if [ "${array[$item]}" -gt "85" ]
   then
     exit 0
  fi

#print numbers  
if (( ( ${array[$item]} >= 30 )  &&  ( ${array[$item]} <= 60 ) ))
 then
     continue
  
   elif  (( (${array[$item]} % 2) == 0 ))
     then
       echo ${array[$item]} 
    
  else 
   continue
  fi

done
