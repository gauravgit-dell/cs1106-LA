#!/bin/bash
SCRIPT_NAME="kill_process.sh"
if [ "$#" -ne 1 ]; then
    echo "Usage: ./$SCRIPT_NAME <process_name>"
    exit 1
fi
PROCESS_NAME="$1"
pkill -f "$PROCESS_NAME"

if [ $? -eq 0 ]; then
    echo "Process '$PROCESS_NAME' has been terminated."
else
    echo "Error: No process found with the name '$PROCESS_NAME'."
fi
