#!/bin/bash

# ----------------------------------------
# Linux System Resource Monitoring Script
# ----------------------------------------

LOG_FILE="/var/log/system_monitor.log"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "----------------------------------------" >> $LOG_FILE
echo "System Resource Report - $TIMESTAMP" >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE

# CPU Usage
echo "CPU Usage:" >> $LOG_FILE
top -b -n1 | grep "Cpu(s)" | awk '{print "CPU Load: " 100 - $8 "%"}' >> $LOG_FILE
echo "" >> $LOG_FILE

# Memory Usage
echo "Memory Usage:" >> $LOG_FILE
free -h | awk '/Mem/{printf("Used: %s / Total: %s (%.2f%%)\n", $3, $2, $3/$2 * 100.0)}' >> $LOG_FILE
echo "" >> $LOG_FILE

# Disk Usage
echo "Disk Usage:" >> $LOG_FILE
df -h --total | grep 'total' | awk '{print "Used: "$3" / "$2" ("$5" used)"}' >> $LOG_FILE
echo "" >> $LOG_FILE

# Top 5 Memory Consuming Processes
echo "Top 5 Memory Consuming Processes:" >> $LOG_FILE
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -6 >> $LOG_FILE
echo "" >> $LOG_FILE

# Uptime
echo "System Uptime:" >> $LOG_FILE
uptime -p >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Report saved to $LOG_FILE"
