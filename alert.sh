#!/bin/bash

#echo -e "\033[31mALERT: An error occurred!\033[0m"


a=`top -n 1 | awk 'NR==8 {print $10}'`
b=`top -n 1 | awk 'NR==8 {print $11}'`
c=`df -Th / | awk  'NR==2 {print $6}' | sed 's/%//'`

echo "$a" : Cpu Usage  

echo "$b" : Memory Usage

echo "$c" : Disk Usage


if (( $(echo "$a > 1.0" | bc -l) ));

then 
	echo -e "\033[31mALERT: Cpu Usage is Exceeded!\033[0m"
fi
if (( $(echo "$b > 0.1" | bc -l) ));
then
	echo -e "\033[31mALERT: Memory usages at it's peak!\033[0m"

elif [[ "$c" -gt 90 ]];
then
	echo -e "\033[31mALERT: Space is Out of running!\033[0m"

else
	echo -e "\e[32m system is good going. keep it up.\e[0m"
fi





