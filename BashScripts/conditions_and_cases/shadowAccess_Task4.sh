#!/bin/bash
#Script checks if /etc/shadow has a read access to a current user
#and reports an exit status

# Executing a command with a suppressed output
cat /etc/shadow > /dev/null 2>&1

#Checking the status of system variable $? (exit status)
#and reporting the exit status accordingly
case $? in
  0)
   echo Command succeeded
   exit 0
   ;;

  *)
   echo Command failed
   exit 1
   ;;
esac



