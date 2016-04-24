#! /bin/bash 
# iterate through all the files in directory

MEDIALIST=$(cat /root/Projects/cs225/medialab/medialist.txt)

rm -f /root/Projects/cs225/foundlist.txt
rm -f /root/Projects/cs225/lostfiles.txt

for files in $MEDIALIST ;do

	if [[  -e /root/Projects/cs225/medialab/"$files" ]] ;then 
		echo "The $files exists" >> ~/Projects/cs225/foundlist.txt
	else 
		echo  "The $files not found" >> ~/Projects/cs225/lostfiles.txt
	fi
done 
