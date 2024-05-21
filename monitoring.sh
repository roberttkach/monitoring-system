#!/bin/bash

# Getting CPU load information
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

# Getting memory usage information
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')

# Getting disk space usage information
DISK_USAGE=$(df -h | awk '$NF=="/"{printf "%s", $5}')

echo "CPU Load: $CPU_LOAD"
echo "Memory Usage: $MEMORY_USAGE"
echo "Disk Space Usage: $DISK_USAGE"
