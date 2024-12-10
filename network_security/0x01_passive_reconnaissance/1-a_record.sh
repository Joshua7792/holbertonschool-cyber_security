#!/bin/bash

# Check if domain argument is not empty 
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

# nslookup to retrieve only the A record of the domain
nslookup -query=A $1