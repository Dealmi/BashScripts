#!/bin/bash
#This script takes a login name as an argument and outputs the home directory of the user.

username=$1

homeDir ()
{
user=$1
home=$(grep ^$user /etc/passwd | cut -d":" -f6)
echo $home
}

homeDir $username

