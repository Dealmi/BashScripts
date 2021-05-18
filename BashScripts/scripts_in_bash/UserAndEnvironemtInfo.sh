#!/bin/bash
# This script prints different info about current user and their environment

#Print user's home directory
echo "Home dir: $HOME"

#Print a user's name
echo "User Name: $(whoami)"

#Print a user's ID
echo "User ID: $(id | cut -d" " -f1 | cut -d= -f2)"

#Print a groups information
echo "Group Information: $(id $(whoami) | awk '{print $3}' | cut -d= -f2)"

#Print a terminal's type
echo "Terminal: $TERM"

#Print the name of a current directory
echo "Current directory: $(pwd)"

#Print system's date and time
echo "System date/time: $(date)"

