#!/bin/bash

CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)

echo "$CPUUSAGE" | mail -s "Top 5 CPU Usage" vishnudevops2024@gmail.com


