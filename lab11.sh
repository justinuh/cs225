#!/bin/bash
. ~/Projects/cs225/functionLibrary.sh
trap "echo ' Sorry! I have trapped Ctrl-C" SIGINT
SCRIPTNAME=${0##*/}

TIMEFILE=/root/Projects/cs225/timefiles/

LISTFILE=$(find $TIMEFILE)


while getopts :fh opt ;do 
	case $opt in 
		f) FORCE='true';;
		h) echo "Your Argument:"
		   echo " -f forces  file to be moved instead" 
		   echo " -h prints out help page" ;;
	       /? )echo " Try '$SCRIPTNAME' -h for help"
		   exit 0 ;;
        esac
done


shift $((OPTIND -1))

for LINE in $LISTFILE ;do
	if [ ! -d $LINE ] ;then
		chk
		check
		if [ -z $FORCE ] 
		then 
			copy
		else
			move
		fi
	fi
done
