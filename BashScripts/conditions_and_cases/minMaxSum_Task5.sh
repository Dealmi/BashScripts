#!/bin/bash
#This script prints min, max and sum of all generated numbers

#given code which generates random numbers
function rand() {
    echo $(($RANDOM % ${1}))
}

for item in `seq 1 10`
 do
    value="$(rand 100)"
    echo "[$item] => ${value}"
    #populating my array
    array[$item-1]=${value}
done

# my code here
#initializing vars
min=100
max=0
sum=0

for item in `seq 1 10`
 do
   sum=`expr $sum + ${array[$item-1]}`
    if [ $min -gt ${array[$item-1]} ]
     then 
       min=${array[$item-1]}
    fi

    if [ $max -lt ${array[$item-1]} ]
     then
       max=${array[$item-1]}
    fi
done

echo min=$min
echo max=$max
echo sum=$sum


