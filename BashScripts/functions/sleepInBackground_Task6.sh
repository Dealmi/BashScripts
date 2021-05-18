#!/bin/bash
#This script checks whether "sleep 1000" is running in the background
#If it doesn't then scripts starts it.

startSleep() 
{
 ps -ef| grep "[s]leep 1000" || sleep 1000 &
}

startSleep


