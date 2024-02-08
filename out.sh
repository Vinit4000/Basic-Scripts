#! / bin/bash
echo "$1"
a=192.168.0.198


ping=$(ping $a)
echo $ping
