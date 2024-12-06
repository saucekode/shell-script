#!/bin/bash
# enter name of directory you want to check the file in
# enter name of file in the said directory

# check if directory is indeed a directory
# check if directory contains any data
# check if file exists inside directory

directory_to_check="$1"
file_to_check="$2"

if [ -z  "$directory_to_check" ]; then
    echo "Kindly provide a directory"
    exit 1
fi

if [ -z  "$file_to_check" ]; then
    echo "Kindly provide a file"
    exit 1
fi

if [ -e "$directory_to_check" ] ||  [ -d "$directory_to_check" ]; then
    if [ -f "$directory_to_check/$file_to_check" ]; then
        echo "File found!"
    else
        echo "File not found"
    fi
else 
    echo "Either directory does not exist or specified directory is not a directory!"
fi