#! /bin/bash

echo "Please enter your number"

read NUMBER

if [[ "$NUMBER" -gt 5 ]] ;then 
	echo "You are larger than five"
else 
	echo "You are NOT larger than five"
fi 

