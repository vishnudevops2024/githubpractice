#!/bin/bash

HOSTNAME=$hostname
SUBJECT="HIGH_CPU_USAGE"
CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
sendmailalert(){
    (
        echo -e "SUBJECT : $SUBJECT"
        echo "please check high CPU Usage"
    ) | mail -s "Top 5 CPU Usage" vishnudevops2024@gmail.com
}

THRESHOULD=0

checkcpuusage(){

        CPUUSAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
        if [ $CPUUSAGE -gt $THRESHOULD]
        then
            echo "High cpu detected on $HOSTNAME"
            sendmailalert

        else
            echo "CPU usage normal range"

        fi

}
checkcpuusage




