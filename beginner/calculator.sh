#!/bin/bash
first_num="$1"
second_num="$2"
operator="$3"

function simple_calculator(){
    if [ "$operator" == "+" ];
    then
        result=$((first_num + $second_num))
    elif [ "$operator" == "-" ];
    then
        result=$((first_num - $second_num))
    elif [ "$operator" == "x" ];
    then
        result=$(($first_num * $second_num))
    elif [ "$operator" == "/" ];
    then
        result=$(($first_num / $second_num))
    fi
    
    echo $result
}

simple_calculator