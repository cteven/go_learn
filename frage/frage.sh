#!/bin/sh

echo Die gestellte Frage ist:
echo "$1?"

while [ true ]; do
	echo Gebe deine Antwort ein:
	read ANTWORT
	if [ $ANTWORT = $2 ]; then
		echo richtig
		exit 0
	elif [ $ANTWORT = $3 ]; then 
		echo nenene
		exit 1
	else 
		echo noch mal
	fi
done

