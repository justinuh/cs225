#! /bin/bash 

rm -f /root/Projects/cs225/medialab/mpglist.txt
MEDIAXML="$(grep filename /root/Projects/cs225/medialab/media.xml| cut -d'>' -f2| cut -d'<' -f1 )"
MEDIALAB="$(ls -A /root/Projects/cs225/medialab/.) "


NUM1=0
NUM2=0

for filename in $MEDIAXML ; do

	if [[ ! -e /root/Projects/cs225/medialab/"$filename" ]] ;then 
		echo "$filename"
		echo "$filename" >> /root/Projects/cs225/medialab/mpglist.txt
		(( NUM1++ ))
	fi
done
if [[ $NUM1 -eq  0 ]]
then	
	echo "No files are not in media.xml"
	echo "No files are not in media.xml" >> /root/Projects/cs225/medialab/mpglist.txt
fi
echo
echo >> /root/Projects/cs225/medialab/mpglist.txt
echo "Files not in medialab directory:"
echo "Files not in medialab directory:" >> /root/Projects/cs225/medialab/mpglist.txt

for items in $MEDIALAB
do
	if [[ -n "$(grep -v $items /root/Projects/cs225/medialab/media.xml)" ]]
	then
		echo "$items"
		echo "$items" >> /root/Projects/cs225/medialab/mpglist.txt
		(( NUM2++ ))
	fi
done

if [[ $NUM2 -eq  0 ]]
then 
	echo "No files are not in medialab directory"
	echo "No files are not in medialab directory" >> /root/Projects/cs225/medialab/mpglist.txt 
fi 

echo 
echo >> /root/Projects/cs225/medialab/checklist.txt
echo "$NUM1 media files in medialab directory that are NOT list in media.xml"
echo "$NUM1 media files in medialab directory that are NOT listed in media.xml" >> /root/Projects/cs225/medialab/mpglist.txt
echo "$NUM2 media files in media.xml that are Not in medialab directory"
echo "$NUM2 media files in media.xml that are NOT in medialab directory" >> /root/Projects/cs225/medialab/mpglist.txt  
