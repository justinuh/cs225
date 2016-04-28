#! /bin/bash 

rm -f /root/Projects/cs225/medialab/mpglist.txt
MEDIAXML=$(grep "filename"  /root/Projects/cs225/medialab/media.xml| cut -d'>' -f2| cut -d'<' -f1 | sort | uniq | grep -vi "NULL" )
MEDIALAB=$(ls -A /root/Projects/cs225/medialab) 
RAIN=$(cat /root/Projects/cs225/medialab/media.xml)

echo "files not found in media.xml:"

for filename in $MEDIALAB
do 
	if ! grep -q $filename /root/Projects/cs225/medialab/media.xml
	then
		echo "$filename"
		(( FileCounter++))
	fi
done

echo "files not in medialab:"

for item in $MEDIAXML
do 
 	if [[ ! -e /root/Projects/cs225/medialab/$item ]]
	then	
		echo "$item"
		(( LINECounter++ ))
	fi
done



echo "$FileCounter files in medialab that are not in media.xml"
echo "$LINECounter files in media.xml that are not in medialab"

