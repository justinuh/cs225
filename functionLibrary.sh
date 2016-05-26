#!/bin/bash



chk()
{ 
	TEMP=$(stat --format '%y' "$LINE")
	TEMP=${TEMP%%' '*}
	Y=${TEMP%%-*}
	TEMP=${TEMP#*-}
	M=${TEMP%%-*}
	TEMP=${TEMP#*-}
	D=${TEMP%%-*} 
} 
check() 
{
	if [ ! -d "${TIMEFILE}/${Y}/${M}/${D}" ]

	then 
		mkdir -p "${TIMEFILE}/${Y}/${M}/${D}"
	fi
}
copy() 
{
	cp $LINE "$TIMEFILE/${Y}/${M}/${D}"
}

move()
{ 
	mv $LINE "$TIMEFILE/${Y}/${M}/${D}"
}
