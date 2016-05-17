#!/bin/bash



while getopts :dvhn:l: opt ;do 
	case $opt in 
		d) set -x ;;
		v) VERBOSE=true
		   echo "VERBOSE is set true" ;;
		h) echo "Your options are :
			-d setting debugging
			-v setting verbose to true
			-h Help
			-n Entering a name 
			-l Directory (Directory Required)" ;;
		n) ARG=$OPTARG
			echo "$ARG is the name entered" ;;
	     	l) DIR=$OPTARG 
			if [[ -z $DIR ]] ;then
				echo "Please enter a path to a directory"
			fi 
				echo "Would you like to view a $DIR (yes or no)"
				read ANS
				if echo [[ $ANS =~ [Ys][Ee]?[Ss]? ]]  ;then
					ls $DIR/*
				else 
					echo "Thanks for you very much"
				exit 1
				fi ;;
		\?) echo "Your options in $0 are :
		-d turns on debugging
		-v set the Verbose variable to true
		-h Help
		-n Entering the name
		-l List a Dir (Directory Required)" ;;
	  esac
done
shift $(($OPTIND -1))

 
