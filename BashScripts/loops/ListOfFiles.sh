#!/bin/bash
# This scripts outputs a list of files in a current directory
# with files' owners using "for" loop

#reading the current directory into the array
mapfile -t listFiles <<< `ls`

for file in ${listFiles[*]}
do
  echo Filename: $file, Owner: $(ls -l $file | cut -d" " -f3)
done

