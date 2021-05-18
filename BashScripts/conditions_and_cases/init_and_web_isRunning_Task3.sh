#!/bin/bash
# Script checks if init and either httpd or apache daemons are running

#Init or systemd daemon is always runs first and thus it always has pid 1
if [ $(ps -ef | awk {'print $2'} | grep ^1$) -eq 1 ]
  then
    if [ $(ps -ef | grep -c [h]ttpd) -gt 0 ] 
      then 
        echo "This machine is running a web server" 
    fi
fi

