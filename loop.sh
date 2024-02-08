#! /bin/bash

hosts="/ip.txt"


for ip in $(cat $hosts)
do
	echo $ip

if ping -c 1 $ip &> /dev/null
then 
	echo "the iternet is back up" > /successip.txt
else
	echo "timeout" > /failip.txt
fi
done




