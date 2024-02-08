#!/bin/bash

#h=`cat /etc/shadow | cut -d: -f1`
a=`awk -F: '$3 >=1000 {print $1}' /etc/passwd`
b=`cat /etc/shadow | cut -d: -f2`
word="PS"
#echo "$b &>/dev/null"
#echo "$a &>/dev/null"

for j in $a
do
	c=`passwd -S $j`
        password=`openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | head -c 8`
if echo "$c" | grep -q  "$word"
then
     echo "$j passwd is set"
else
    echo -e "$password\n$password" | sudo passwd "$j"
    echo $j  $password >> pp
fi

((j++))
done


