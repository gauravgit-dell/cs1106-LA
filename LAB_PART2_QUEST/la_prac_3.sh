#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi
DIRECTORY="$1"
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' does not exist."
    exit 1
fi
ARCHIVE_NAME="${DIRECTORY%/}.tar.gz"
tar -czf "$ARCHIVE_NAME" "$DIRECTORY"

echo "Directory '$DIRECTORY' has been compressed into '$ARCHIVE_NAME'."
