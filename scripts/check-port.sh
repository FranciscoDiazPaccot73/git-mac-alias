#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <port number>"
    exit 1
fi

output="lsof -i tcp:$1"

echo "Output: $output"

eval $output