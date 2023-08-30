#!/bin/bash

#src='/SOURCE/DIRECTORY/'
#dest='USERNAME@REMOTE_IP_ADDRESS:/REMOTE/DIRECTORY/'
opt1='-avzhP --delete'
opt2='-avzhP --dry-run'

read -p 'Enter "Backup" for a normal backup or press <ENTER> for a dry run: ' input
if [[ '$input' == 'Backup' ]]; then
	echo 'Backing up and removing missing files...'
	rsync $opt1 $src $dest
else
	echo 'Performing a dry run...'
	rsync $opt2 $src $dest
fi