#!/bin/bash

# Check if `mpstat` is installed
if ! command -v mpstat &> /dev/null; then
    echo "mpstat command could not be found. Please install sysstat package."
    exit 1
fi

# Monitor CPU usage every 2 seconds
while true; do
    # Get the CPU usage excluding the idle percentage
    mpstat 1 1 | awk '/Average/ {print "CPU Load: " 100 - $12 "%"}'
    sleep 2
done
