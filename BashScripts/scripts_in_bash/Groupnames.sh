#!/bin/bash
# This script prints group names from /etc/group file.
cat /etc/group | cut -d: -f1
