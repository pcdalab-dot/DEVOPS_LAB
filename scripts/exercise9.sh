#!/bin/bash

isPrime() {

num=$1

if [ $num -le 2 ]; then
    echo "$num is prime"
    return
fi

for ((i=2; i<=num/2; i++)); do
    if [ $(($num % $i)) -eq 0 ]; then
        echo "$num is not prime"
        return
    fi
done

echo "$num is prime"
}

if [ $# -ne 1 ]; then
    echo "Provide one number"
    exit 1
fi

isPrime $1

