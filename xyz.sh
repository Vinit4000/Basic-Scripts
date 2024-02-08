#!/bin/bash

#To Display all the files present in that perticular folder
x=/pab
a=`ls -f /pab`

echo $a &>/dev/null

for j in $a

do
	cd $x

	c=`du -sh $j |awk '{print $1}'` &>/dev/null 
if [ $c != 0 ]
then
     echo  'the file  contains data'
else 
      d=`rm -rf $c`
      echo $d
fi
((j++))
done
