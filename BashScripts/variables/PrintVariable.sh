#!/bin/bash
#Prints out the value of the variable MY_VAR
#defined outside of this script, otherwise
#prints default

echo MY_VAR=${MY_VAR:-default}

