#!/bin/sh

counter=1
for element in $@; do
	echo $counter. $element
	counter=$(($counter+1))
done
