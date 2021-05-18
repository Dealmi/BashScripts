#!/bin/bash

array=($*)

for item in ${array[*]} 
#for item in `seq 0 $[${#array[*]}-1]` 
do
  echo item: $item
  #echo element: ${array[$item]}
  echo '-----------------------------'
done

echo 1st element is: ${array[0]}
echo 2nd element is: ${array[1]}
echo 3rd element is: ${array[2]}
last=${#array[*]}
echo the size of the array is: $last
