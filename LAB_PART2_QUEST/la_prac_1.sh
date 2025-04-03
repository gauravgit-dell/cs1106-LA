#!/bin/bash

# Define the backup directory
BACKUP_DIR="./backup"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Copy all .txt files to the backup directory
cp *.txt "$BACKUP_DIR"

# Optional: Print a message indicating completion
echo "Backup of .txt files completed. Files copied to $BACKUP_DIR."
