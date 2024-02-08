#!/bin/bash
z=system.csv
echo "totalmemory,used,available,runningservices,inactiveservice" > $z

a=`free -h | awk '{print $1,$2}' | cut -d: -f2 | awk '{print $1}' | sed -n '2p'`
b=`free -h | awk '{print $3}' | cut -d: -f2 | awk '{print $1}' | sed -n '2p'`
c=`free -h | awk '{print $NF}' | cut -d: -f2 | awk '{print $1}' | sed -n '2p'`
d=`systemctl list-units --type=service --state=running | grep -c '^'`
e=`systemctl list-units --type=service --state=inactive | grep -c '^'`

echo $a,$b,$c,$d,$e >> system.csv



