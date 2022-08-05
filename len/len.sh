#!/bin/sh

for para in *; do
	if [ $(($(echo $para | wc -m)-1)) -eq $1 ]; then
		echo $para
