#!/bin/bash
nslookup -query=A $1
# # Check if domain argument is not empty 
# if [ -z "$1" ]; then
#     echo "Usage: $0 <domain>"
#     exit 1
# fi