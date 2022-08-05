#!/bin/sh
case $1 in
	2 | 4 | 6 | 8 | 0) echo $1 ist eine gerade Zahl;;
	1 | 3 | 5 | 7 | 9) echo $1 ist eine ungerade Zahl;;
	*) echo weder gerade noch ungerade oder nicht im Intervall [0,9] > error.log;;
	exit 1;;
esac

