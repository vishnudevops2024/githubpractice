#!/bin/bash
SUBJECT="HIGH_CPU_USAGE"
CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)

echo "$CPUUSAGE" | mail -s "CPU USAGE " vishnudevops2024@gmail.com