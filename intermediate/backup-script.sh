#!/bin/bash

source_directory=$1
target_directory=$2

if [ -z $source_directory ]; then
    echo "Source directory is invalid!"
    exit 1
fi

if [ -z $target_directory ]; then
    echo "Target directory is invalid!"
    exit 1
fi

if [ -f $source_directory ]; then
    echo "Source directory either has no content or not a directory"
    exit 1
fi

if [ -f $target_directory ]; then
    echo "Target directory is not a directory"
    exit 1
else
    cp -r $source_directory/* $target_directory
    echo "Files successfully copied..."
fi
