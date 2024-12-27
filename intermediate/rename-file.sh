#!/bin/bash

folder=$1
current_date=$(date +"%Y-%m-%d")

if [ -z  $folder ]; then
    echo "Kindly provide a folder"
    exit 1
fi

if ! [ -e $folder ]; then
    echo "Folder does not exist"
else
    for file in "$folder"/*; do
        if [[ -f $file ]]; then
            dir=$(dirname $file)       
            base=$(basename $file)
            name="${base%.*}"
            ext="${base##*.}"
            mv "$file" "$dir/${name}_$current_date.$ext"
        fi
    done

fi