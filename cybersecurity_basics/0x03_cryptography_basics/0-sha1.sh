#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <password>"
    exit 1
fi

# Generate SHA-1 hash of the input password and store it in 0_hash.txt
echo -n "$1" | sha1sum | awk '{print $1}' > 0_hash.txt
