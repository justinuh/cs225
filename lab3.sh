#! /bin/bash


if [[ $EUID -eq 0 ]] ;then 
	echo "Then it is insecure to run script as root"
	Exit 1
fi 

if [[ -r /etc/passwd ]] ;then
	if [[ $EUID -gt 500 ]] ;then
		HOMEDIR=$(grep ":$UID:" /etc/passwd | cut -d: -f6)
		du -sh $HOMEDIR
	fi
fi
