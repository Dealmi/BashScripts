#!/bin/bash
#This script provides an information about file or directory

fileInfo()
{
  #getting file stats
  echo Type: $(stat -c%F $1)
  echo
  echo Permissions: '(' $(stat -c%a $1)'/'$(stat -c%A $1)')'
}

filenameWithPath() 
{
  #getting an absolute filename
  echo File: "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
  echo
}

filenameWithPath $1
fileInfo $1

