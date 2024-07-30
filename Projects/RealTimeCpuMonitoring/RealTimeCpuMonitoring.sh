#!/bin/bash

# Check if `top` is installed
if ! command -v top &> /dev/null; then
    echo "top command could not be found"
    exit 1
fi

# Function to parse and display CPU usage
monitor_cpu() {
    # Run `top` in batch mode to get a snapshot of CPU usage
    top -b -n 1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 + $4 "%"}'
}

# Monitor CPU usage every 2 seconds
while true; do
    monitor_cpu
    sleep 2
done
