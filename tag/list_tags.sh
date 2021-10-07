#!/bin/sh

printUsage()
{
	echo "Usage:"
	echo "$0 file"
}

if [ $# -ne 1 ]; then
	printUsage
	exit 1
fi

if [ ! -f $1 ]; then
	echo "\"$1\" is not a file."
	printUsage
	exit 1
fi

files=$(find -samefile $1 | tail -n +2)
for file in $files; do
	echo $(dirname $file)
done
