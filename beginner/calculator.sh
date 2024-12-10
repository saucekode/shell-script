#!/bin/bash
first_operand="$1"
second_operand="$2"
operator="$3"

function simple_calculator(){
    if [ "$operator" == "+" ]; then
        result=$((first_operand + second_operand))
    elif [ "$operator" == "-" ]; then
        result=$((first_operand - second_operand))
    elif [ "$operator" == "x" ]; then
        result=$((first_operand * second_operand))
    elif [ "$operator" == "/" ]; then
        result=$((first_operand / second_operand))
    fi
    
    echo $result
}

simple_calculator