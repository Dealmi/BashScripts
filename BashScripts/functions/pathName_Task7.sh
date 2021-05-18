#!/bin/bash
#This script prints its' full path and name

fullPath()
{
  # script's full path
  realpath $0 
}

name()
{
  basename $0
}

fullPath
name

