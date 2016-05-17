#!  /bin/bash 

echo "Please enter  Number between 50 and 100: " 
read NUMBER 

if [[ $NUMBER =~ ^[0-9]+$ ]] && (( $NUMBER >= 50 )) && (( $NUMBER <= 100 )) ;then
	echo "You are right on!!!!!"
else
	echo "You are wrong try again"
fi  









