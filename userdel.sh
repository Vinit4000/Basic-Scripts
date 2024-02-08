#!/bin/bash


a=`awk -F: '$3>=1000 {print $1}' /etc/passwd`
echo -e "$a"


for i in $a
do
	userdel -r $i
done


