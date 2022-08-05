#!/bin/sh

cnt=1

while [ $cnt -le 10 ]; do
	echo Geben Sie eine Zahl ein:
	read number
	echo "-e Eingegebene Zahl: $number \n"
	
	if [ $number -lt 100000 -a $number -gt -100000 ] 2>> error.log; then
		cnt=$((cnt+1))
	else 
		echo -e "Ungueltige Zahl alda \n"
	fi
done
echo ende im jelende
echo "-e \n Errors: \n"
cat error.log
