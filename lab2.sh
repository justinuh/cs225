#!/bin/bash

echo "Please Enter your number"

read NUMBER 

if [[ $NUMBER =~ ^[-+]?[0-9]+$ ]]
then
	basenum="10#$NUMBER"
	rem=$(( $basenum % 2 ))
	if [ $rem -eq 0 ]
	then 
		echo "$NUMBER is even number"
	else 
		echo "$NUMBER is odd number"
	fi
else
	echo "$NUMBER is not a number"
fi
