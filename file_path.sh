#!/bin/bash


read -p  "Please enter the file path and check if it is exist or not: " path

if  [[ -e "$path" ]] 
then
	echo "$path passwords are enabled"
else
	echo "$path the path is not exist"
fi

a=`ls -ld $path  | awk '{print $1}' | cut -d. -f1`

echo $a

if [[ $a == '-rw-r--rw-' ]]
then
     echo "You have permission to edit '$path'"
else
    echo "You do NOT have permission to edit '$path'"	
fi

