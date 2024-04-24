#!/bin/bash



R=$"\e[31m"
G=$"\e[32m"
N=$"\e[0m"



SUBJECT=$($R HIGH_CPU_USAGE $N)

echo -e "$SUBJECT"