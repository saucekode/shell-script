#!/bin/bash

file_name=$1
word_to_extract=$2
file_to_save_content=$3

if [ -z $file_name ]; then
    echo "A file name is required"
    exit
fi

if [ -z $word_to_extract ]; then
    echo "Word to extract is required"
fi

if [ -z $file_to_save_content ]; then
    echo "File to save content is required"
fi

if ! [[ -f $file_name ]]; then
    echo "File does not exist";
    exit
    else 
        touch $file_to_save_content
        cat $file_name | grep -i $word_to_extract >> $file_to_save_content
fi

