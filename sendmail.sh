#!/bin/bash



R=$"\e[31m"
G=$"\e[32m"
N=$"\e[0m"



SUBJECT=HIGH_CPU_USAGE
echo -e " $R $SUBJECT $N"

EMAIL="vishnudevops2024@gmail.com"

sendmailalert() {

(
    echo "TO : $EMAIL"
    echo "FROM:vishnuvemula564@gmail.com"
    echo -e "SUBJECT : $R $SUBJECT $N "
    echo "Please check below word count"


) | mail -s 

}

wordcount() {

cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
  while read -r count word;  
  do
        echo -e  " '$word'  appears $count  times in file " 
    done 
   sendmailalert 

}

wordcount

