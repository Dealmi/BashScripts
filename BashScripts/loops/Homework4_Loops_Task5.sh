#!/bin/bash
# This script lets a user guess the magic number
# It gives hints with "less" or "greater"  words.

magicNumber=$(( $RANDOM % 100 ))
echo "Guess the integer magic number between 0 and 99" 
while [ TRUE ]
do
   read guess

   if [ $guess -lt $magicNumber ];then
     echo less
   elif [ $guess -gt $magicNumber ];then
     echo greater
   else
     echo You win!
     exit 0
   fi

 done

