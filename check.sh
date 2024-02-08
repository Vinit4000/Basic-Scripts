#! /bin/bash

a=`cat /etc/passwd`
echo "to check passwd is set or not the users."

read user

echo "checking user available in /etc/passwd"

if  id "$user" &>/dev/null
then
	echo "user already exist"
else
	useradd "$user"
	echo "$user added successfully"
fi




