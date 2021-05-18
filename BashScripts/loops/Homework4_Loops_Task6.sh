#!/bin/bash
# This script creates files or directories 
# based on the list
# Directory names are ending with the "/"
# and file names are not.

# Reading the data from the pipe
flist=$(cat -)

for item in ${flist[*]}
do
#Checking if a last symbol of an entry is "/"
  lastSymbol=$(echo $item | grep -o /$)

 #making files or folders  
  case $lastSymbol in
    /)
     mkdir $item
    ;;

    *)
     touch $item
  esac
done

