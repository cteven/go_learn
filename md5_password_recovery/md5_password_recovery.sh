#!/bin/bash

usage(){
	echo "Usage: ./md5_passowrd_recovery <password-list> <md5-file>" > /dev/stderr
}

if [ $# -ne 2 ];then 
	usage
	exit 1
fi

if ([ ! -r "$1" ] || [ ! -r "$2" ]);then
	echo one of the parameters is non-readeable.
	usage
	exit 1
fi

if [[ "$2" != *.md5  ]]; then
	echo second File is not .md5 File.	
	usage
	exit 1
fi

COUNTER=0

for passw in $(cat "$1"); do
	COUNTER=0
	PASSWORD=$(echo -n "$passw" | md5sum | cut -d " " -f 1)		
	for hash in $(cat $2); do
		if [ "$PASSWORD" = "$hash" ];then 
			COUNTER=$((COUNTER+1))
		fi
	done
	if [ $COUNTER -gt 0  ];then	
		echo $COUNTER, "$passw", $(echo -n "$passw" | md5sum | cut -d " " -f 1)
	
	fi
done
