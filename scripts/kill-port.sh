#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <PID>"
    exit 1
fi

output="kill -9 $1"

echo "Output: $output"

eval $output