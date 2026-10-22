#!/bin/bash

filesdir=$1

searchstr=$2

if [ -z "$1" ]; then
	exit 1
fi

if [ -z "$2" ]; then
	exit 1
fi

numoffiles=$(find $1 -type f | wc -l)
numofmatchinglines=$(grep $2 -r $1 | wc -l)

echo "The number of files are $numoffiles and the number of matching lines are $numofmatchinglines"
