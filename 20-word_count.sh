#!/bin/bash

R=$"\e[31m"
G=$"\e[32m"
N=$"\e[0m"


cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
  while read -r count word;  
  do
        echo -e  " $R'$word' $N appears $G $count $N times in file " 
    done 
    
    



 

