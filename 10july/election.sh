#!/bin/bash


A=`cat /age.txt`

for i in  $A
do
	echo -n  $i 

if [ $i -ge 18 ] && [ $i -lt 100 ]

then
	echo "your are eligible for voting" 
else
	echo "your are not eligible for voting"
fi
((i++))
done >  /dump.txt

