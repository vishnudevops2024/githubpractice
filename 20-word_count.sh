#!/bin/bash

R=$"\e[31m"
G=$"\e[32m"
N=$"\e[0m"
B=$"\e[1m"

cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
  while read -r count word;  
  do
        echo -e  " $R$B '$word' $N appears $G$B $count $N times in file "
    done




 

