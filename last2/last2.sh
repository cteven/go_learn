#!/bin/sh

COUNT=1

for para; do
	if [ $COUNT -eq $# -o $COUNT -eq $(($# -1 )) ]; then
		echo $para
	fi
	COUNT=$((COUNT+1))
done
