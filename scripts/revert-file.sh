#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <origin branch> <file name>"
    exit 1
fi

output="git checkout origin/$1 -- $2"

echo "Output: $output"

eval $output