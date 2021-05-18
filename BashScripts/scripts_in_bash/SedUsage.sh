#!/bin/bash
# This script removes all lines with word Linux from file sed_task
#and replaces first appearance of the word "xterm" to the word "Bash"

cat sed_task | sed /Linux/d | sed s/xterm/Bash/

