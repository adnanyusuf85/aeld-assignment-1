#!/bin/bash

if [ -z "$1" ]; then
	exit 1
fi

if [ -z "$2" ]; then
	exit 1
fi

dirname=$(dirname "$1")  
mkdir -p $dirname
writefile=$1
writestr=$2

touch $1
echo "$2" > $1

if [ ! -f "$1" ]; then
	exit 1
else
	echo "File created successfully."
fi

exit 0
