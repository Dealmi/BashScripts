#!/bin/bash
#This script prints a number of days in a current month
#Using case and names of months (date +%B)

leanYearMonths=(31 28 31 30 31 30 31 31 30 31 30 31)

#Let's find a name of a current month
name=$(date +%B)

#Now let's get the index number of the current month
case name in
  January)
   indexNumber=0
   ;;

  February)
   indexNumber=1
   ;;

  March)
   indexNumber=2
   ;;

  April)
   indexNumber=3
   ;;

  May)
   indexNumber=4
   ;;

  June)
   indexNumber=5
   ;;

  July)
   indexNumber=6
   ;;

  August)
   indexNumber=7
   ;;

  September)
   indexNumber=8
   ;;

  October)
   indexNumber=9
   ;;

  November)
   indexNumber=10
   ;;

  December)
   indexNumber=11
   ;;

esac

#Result
echo ${leanYearMonths[$indexNumber]}

