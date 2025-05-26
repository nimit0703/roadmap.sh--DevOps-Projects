#!/bin/bash

echo "===== SERVER PERFORMANCE STATS ====="
echo ""

# CPU Usage
echo ">> Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
echo ""

# Memory Usage
echo ">> Memory Usage:"
free -m | awk 'NR==2{printf "Used: %s MB | Free: %s MB | Usage: %.2f%%\n", $3, $4, $3*100/($3+$4)}'
echo ""

# Disk Usage
echo ">> Disk Usage:"
df -h --total | grep 'total' | awk '{print "Used: " $3 " | Free: " $4 " | Usage: " $5}'
echo ""

# Top 5 processes by CPU usage
echo ">> Top 5 Processes by CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

# Top 5 processes by Memory usage
echo ">> Top 5 Processes by Memory:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""
