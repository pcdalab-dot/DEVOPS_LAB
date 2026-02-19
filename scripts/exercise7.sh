#!/bin/bash

if [ $# -ne 1 ] || [ $1 -lt 0 ]; then
    echo "You have to provide one non negative number"
    exit 1
fi

if [ $(($1 % 2)) -eq 0 ]; then
    echo "Number $1 is even"
else
    echo "Number $1 is odd"
fi
