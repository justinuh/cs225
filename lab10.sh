#!/bin/bash

TEMP=$(mktemp)
OSFILES=$(find /)


cleanup() 
{ 	
	rm -Rf $TEMP
	exit 1
}

trap cleanup SIGINT


i=1
for LINE in $OSFILES 
do
	echo "$LINE"  >> $TEMP
	echo "FILE $i, $LINE"
	(( i++ ))
done 

 

