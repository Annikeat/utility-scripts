#!/bin/bash

echo "===== System Health Check ====="

# CPU Usage
cpu=$(top -bn2 | awk -F',' '/^%Cpu/ {print 100 - $4}' | tail -n 1)
echo "CPU Usage: $cpu%"

# Memory Usage
mem=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')
echo "Memory Usage: $mem%"

# Disk Usage
disk=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage: $disk"

# Alert if CPU > 80
cpu_int=${cpu%.*}
if [ $cpu_int -gt 80 ]; then
    echo "WARNING: High CPU Usage!"
fi
