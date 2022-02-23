#!/bin/bash
#This script makes bakup using tar archiver and pigz compressor. 
#The script deletes archives which are certain time old

# Settings
defaultDir='/etc' #default directory
fileMask=('*.sh' '*.csh')   #archive files ignoring files with this pattern, defined as array
retention=60  #remove archives this seconds old
backupDir='/home/denis/backup' # backup directory
compressRate=11 #compress rate from 0 (none) to 9 or 11 (max)
recursive="yes" #compress subdirectories as well (yes\no)

#Let's determinate the actual settings
dir=${1:-$defaultDir} #dir to work on. This variable is defined either via command line or defaultDir var.

# Is recursive mode turned on or off?
if [[ $recursive == "yes" ]]; then
    rec=''
else
    rec='--no-recursion'
fi
#Does mask array contain any records?
if [[ -z $fileMask ]]; then
    mask=''
else
    for item in ${fileMask[@]}; do
         mask+=("--exclude=${item}")
    done
fi

#Current time
now=$(date +"%d.%m.%Y_%H%M%S")
#Command line used to make archives
tar -cf - $rec ${mask[@]} $dir | pigz -$compressRate > $backupDir/archive."${now}".tgz

#Clean up 

#List of archives 
archivesList+=($(ls $backupDir/archive* -1))

#removing archives older than retention threshold
for item in "${archivesList[@]}"; do
  if [[ $(( $(date +"%s") - $(stat -c %Y $item) )) -gt $retention ]]; then
    rm -f $item
  fi
done
