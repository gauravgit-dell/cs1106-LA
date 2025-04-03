#!/bin/bash
if ! command -v udisksctl &> /dev/null; then
    echo "Error: udisksctl is not installed. Please install it to use this script."
    exit 1
fi
echo "Mounted Filesystems:"
udisksctl status | grep "mounted" || echo "No mounted filesystems found."
