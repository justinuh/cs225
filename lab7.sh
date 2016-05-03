#!/bin/bash 


ENTRY=$1
VAR=${ENTRY%/}




if [[  $VAR = "" ]] ;then
	echo "$ENTRY"
else 
	echo "${VAR##*/}"
fi

 
