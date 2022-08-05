#!/bin/sh

cnt=1

while [ $cnt -lt 10 ]; do
	echo jo $cnt
	cnt=$(($cnt+1))
done
