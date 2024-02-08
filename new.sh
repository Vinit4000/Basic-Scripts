#!/bin/bash

echo "hey choose an option"

echo a=to see the current date
echo b=to see current dir

read choice

case $choice in
	a)date;;
	b)pwd;;
	*)echo "non valid input"
esac
