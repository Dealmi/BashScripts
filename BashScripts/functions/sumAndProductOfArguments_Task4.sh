#!/bin/bash
#This script program reads a list of numbers from arguments 
#and outputs the sum and the product of the numbers.

sum()
{
 #Counting a total sum of numbers.
 sum=0
 array=( $@ )
 for item in ${array[*]}
 do
   ((sum+=$item))
 done
 echo Sum: $sum
}

product()
{
 #Counting a product of numbers.
 prod=1
 array=( $@ )
 for item in ${array[*]}
 do
   ((prod=$prod*$item))
 done
 echo Prod: $prod
}

sum $@
echo
product $@

