#/bin/bash


for (( counter=20; counter>0; counter--))
do
	echo  $counter &>/dev/null
done

printf "\n"
