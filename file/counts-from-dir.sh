#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: counts-from-dir.sh [dir1] [dir2] ..."
fi

i=1
for target in $@
do
    echo --------------------------------------

    files=$(find "$target" -maxdepth 1 -type f -print | wc -l)
    dirs=$(find "$target" -maxdepth 1 -type d -print | wc -l)
    dirs=`expr $dirs - 1`

    echo "Target Directory: $target"
    echo "Files: $files"
    echo "Directories: $dirs"

    echo --------------------------------------

    if [ $i -ne $# ]; then
        echo
    fi
    i=$(expr $i + 1)
done