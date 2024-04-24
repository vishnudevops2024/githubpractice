#!/bin/bash
SUBJECT="HIGH_CPU_USAGE"
CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
HIGHUSAGE=$CPUUSAGE | grep "%cpu" | awk '{print $NF}' | cut -d' ' -f1 

echo "$CPUUSAGE" 
echo "$HIGHUSAGE" | mail -s "CPU USAGE " vishnudevops2024@gmail.com