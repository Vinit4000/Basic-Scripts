#!/bin/bash


echo "please enter a path"
read -p "enter your path: " path
read -p "enter your file: " file

a=`ls $path | grep -i $file`

if [ $a == $file ];
then 
	echo "available"
else
	echo "not available"
fi
