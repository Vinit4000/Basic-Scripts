#!/bin/bash

echo "creating Logical Volume"

a=`vgcreate devops /dev/sdb1 &>/dev/null`
echo "$a &>/dev/null"
echo "you want to create a partition"
read partition

#read "on which partion do you want to create lvm & give the name of lv :" path

#read "how much size you want to give in MB :" size


#b=`lvcreate -L $size -n $path

if [ $partition == 'yes' ]
then
	read -p "on which partion do you want to create lvm & give the name of lv: " path
	sleep 2;

	read -p "how much size you want to give in MB: " size
	sleep 2;

	b=`lvcreate -L $size -n $path`
	echo $b
        c=`mkdir /volume`
	echo $c &>/dev/null

	d=`mkfs.ext4  $path`
	echo $d &>/dev/null

	echo "$path  /volume  ext4  defaults 0 0" >> /etc/fstab


else
	exit 1
fi

