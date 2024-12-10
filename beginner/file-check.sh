#!/bin/bash

directory_to_check=$(realpath $1)
file_to_check=$2

if [ -z  $directory_to_check ]; then
    echo "Kindly provide a directory"
    exit 1
fi

if [ -z  $file_to_check ]; then
    echo "Kindly provide a file"
    exit 1
fi

if [ -e $directory_to_check ] ||  [ -d $directory_to_check ]; then
    if [ -f $directory_to_check/$file_to_check ]; then
        echo "File found!"
    else
        echo "File not found"
    fi
else 
    echo "Either directory does not exist or specified directory is not a directory!"
fi