#!/bin/bash

file="input"

backup_name="$file".$(date +%Y%m%d%H%M)

if [ -e $backup_name ]; then
    backup_name = "$backup_name"-2
fi

cp -v $file $backup_name