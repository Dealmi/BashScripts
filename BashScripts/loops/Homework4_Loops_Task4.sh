#!/bin/bash
# This script reads words from input
#and appends Hello infron of it untill
#the word "stops" is typed

while [ TRUE ]
do
   read input
   if [ "$input" == "stop" ]; then
     exit 0
   fi
   echo Hello, $input
done

