#!/bin/sh

usage(){

	echo "Usage: ./rls.sh <length> " > /dev/stderr
	exit 1
}


if [ $# -ne 1 ]; then
	usage
fi

cd /usr/bin

for para in *; do
	if [ $(($(echo $para | wc -m)-1)) -eq $1 ];then
	       	echo $para
fi
done

cd -
