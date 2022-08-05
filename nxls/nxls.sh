#!/bin/bash

usage(){
	echo "Usage: ./nxls.sh <directory>" > stderr
	exit 1
}

cd $1

for file in *; do
	if [ -x $file ]; then
		echo $file is executable.
	fi
done
cd - > /dev/null
