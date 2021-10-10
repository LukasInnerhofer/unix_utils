#!/bin/sh

printUsage()
{
	echo "Usage:"
	echo "$0 file tags"
}

if [ $# -lt 2 ]; then
	printUsage
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "\"$1\" is not a file."
	printUsage
	exit 1
fi

file="$(basename "$1")"
echo "Tagging $1..."
for tag in "$@"; do
	[ "$tag" = "$1" ] && continue
	if [ -f "$tag/$file" ]; then
		echo "Tag \"$tag\" exists. Skipping."
		continue
	fi
	[ ! -d "$tag" ] && mkdir -p "$tag"
	ln "$1" "$tag/$file"
	echo "$tag"
done

echo "Done. Goodbye :^)"

