#!/bin/sh

SUM=0

for para in $(ls -il | cut -d " " -f 1 | grep -v total); do
	SUM=$((SUM + $para))	
done

echo "sum of I-Nodes: $SUM"
