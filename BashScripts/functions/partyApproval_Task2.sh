#!/bin/bash
# This script checks out if you are permitted to go to party
#based on your age and wherever you have a letter from your parents
#if you are underaged.
#If you are underaged and without a letter you may cannot go.

partyApproval()
{
age=$1
letter=$2
if (($age>=18))
then 
  echo "You may go."
  exit 0
else 
  if [ $letter == "yes" ]
  then 
    echo "You may go but must be back before midnight."
    exit 0
  else
    echo "You may not go"
  fi
fi
}

partyApproval $1 $2

