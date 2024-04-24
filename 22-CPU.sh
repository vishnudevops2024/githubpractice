#!/bin/bash

HOSTNAME=$hostname
SUBJECT="HIGH_CPU_USAGE"
#CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
sendmailalert(){
    (
        echo -e "SUBJECT : $SUBJECT"
        echo "please check high CPU Usage"
    ) | mail -s "Top 5 CPU Usage" vishnudevops2024@gmail.com
}

THRESHOULD=0.0

checkcpuusage(){

        CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
        #echo "$CPUUSAGE" | grep "%cpu" | awk 'print $2' | cut -d -f5
        #CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6  | grep "%cpu" | awk '{print $NF}' | cut -d' ' -f1 )
        #top -bn1 | grep "Cpu(s)" | awk '{print $2}'

        if [ "$CPUUSAGE" -gt "$THRESHOULD" ] 
        then
            echo "High cpu detected on $HOSTNAME"
            sendmailalert

        else
            echo "CPU usage normal range"
            sendmailalert

        fi

}
checkcpuusage




