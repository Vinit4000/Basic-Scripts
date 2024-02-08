#!/bin/bash


echo to check does script excuted by root  or not?
sleep 3

if [ $UID == 0 ]
then 
	echo the script is excuted by root user
else
	echo the script is not excuted by root user
fi

