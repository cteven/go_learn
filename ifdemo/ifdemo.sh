#!/bin/sh

echo date > error.log

if ./$1 2> error.log; then
	echo Ausführung erfogreich!
else
	echo "erfolgreichn't..."
fi
