#!/bin/bash

a=data.csv

echo "Username,UID,GID,Home Directory,Login Shell,Password Set" > $a

while IFS=':' read -r username password uid gid info homedir shell;
do
	if (( uid < 1000 ))
then
	echo ''
fi
    echo "$username,$uid,$gid,$homedir,$shell,$password_set" >> $a
done < /etc/passwd
