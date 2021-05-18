#!/bin/bash
#This script prints a number of days in a current month

leanYearMonths=(31 28 31 30 31 30 31 31 30 31 30 31)

#Let's find an index number of a current month (0=January, 1=February etc..)
month=$[$(date +%m)-1]

#Result 
echo ${leanYearMonths[$month]}

