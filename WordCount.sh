#!/bin/bash

wordcount() {

cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
  while read -r count word;  
  do
        echo -e  " '$word' appears $count  times in text file " 
    done 
   

}
wordcount  | mail -s "WORDCOUNT-EXAMPLE" vishnudevops2024@gmail.com info@devops.com

