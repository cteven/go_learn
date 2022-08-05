#!/bin/sh

i=1

for para; do
	echo $i. Parameter: $para
	i=$(($i+1))
done

