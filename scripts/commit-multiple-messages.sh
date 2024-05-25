#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <commit message 1> [<commit message 2> ... <commit message n>]"
    exit 1
fi

output="git commit"

for message in "$@"; do
    output="$output -m '$message'"
done

echo "Output: $output"

eval $output