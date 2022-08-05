#!/bin/sh

mkdir ~/backup
YN=""
for file in *$1; do
	while [ true ]; do
		echo Soll von der Datei $file ein Backup erstellt werden?[y/n]
		read YN
		if [ "$YN" = "y" -o "$YN" = "Y" ]; then
			echo \\n Von $file wird ein Backup erstellt.
			cp $file ~/backup/$file
			break
		elif [ "$YN" = "n" -o "$YN" = "N" ]; then
			echo \\nZur naechsten Datei.
			break
		else
			echo ungültige antwort. 	
		fi
	done
done
