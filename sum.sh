#!/bin/bash

a=`cat /no.txt`
#read no
echo "calculating sum of all no."

for j in $a
do
	echo $j
        
    sleep 5
((j++))
done

for h in $a
do
   
	sum=$((j + h ))
	echo $sum
((h++))
done




