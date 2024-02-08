#!/bin/bash


echo "Erasing all the data present inside the home folder."

a=`du -sh /home/* | awk '$1>=300M {print $2}'`
b=/home/aditya

echo -e "$a"


for i in $a
do
   echo $i >&/dev/null

if [[ $i == $b ]]
then
     echo "No need to delete the content inside the directory/"

else
	cd $i
	rm -rf *
fi

done
((i++)) >&/dev/null

	

