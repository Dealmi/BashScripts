#!/bin/bash
#This script prints usernames from /etc/passwd file.
cat /etc/passwd | awk -F : '{print $1}'

