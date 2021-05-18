#!/bin/bash
#This script program reads a list of numbers from arguments 
#and finds the minimum and the maximum numbers

minimum()
{
  # Let's find the minimum
  array=($*)
  min=${array[0]}
  for item in ${array[*]}
  do
    if [ $min -gt $item ]
    then 
      min=$item
    fi
  done
  echo Min: $min
}

maximum()
{
  #Let's find maximum
  array=($*)
  max=${array[0]}
  for item in ${array[*]}
  do
    if [ $max -le $item ]
    then 
      max=$item
    fi
  done
  echo Max: $max
}

minimum $*
echo
maximum $*

