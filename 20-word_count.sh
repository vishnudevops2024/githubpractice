#!/bin/bash

##echo "Lorem ipsum dolor sit sit amet et cetera." | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr

##tr '[:space:]' '[\n*]' < your_text_file.txt | grep -v "^\s*$" | sort | uniq -c | sort -bnr

cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5
 



#| sort | uniq -c | sort -bnr | head -n 5

##while IFS= read -r line; 
##do
    # Convert each line into words, filter out empty lines, and count occurrences
    ##echo "$line" | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr
    # Iterate over each word/count pair and print in sentence format
    #while read -r count word; 
    #do
        #echo "The word '$word' appears $count time(s) in the text."
    #done
##done < "wordcount1.txt" 

 

