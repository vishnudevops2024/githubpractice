#!/bin/bash

##echo "Lorem ipsum dolor sit sit amet et cetera." | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr

##tr '[:space:]' '[\n*]' < your_text_file.txt | grep -v "^\s*$" | sort | uniq -c | sort -bnr

cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -i -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5

#| grep -v "^\s*$" | sort | uniq -c | sort -bnr

 

