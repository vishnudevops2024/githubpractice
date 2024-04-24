#!/bin/bash



R=$"\e[31m"
G=$"\e[32m"
N=$"\e[0m"
echo "content-Type : text\html"
echo 
echo "<html>"
echo "<body>"
echo "<h3 style='color:red'> wordcount checking </h3>"
echo "sample test mail"
echo "</body>"
echo "</html>"

wordcount() {

cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
  while read -r count word;  
  do
        echo -e  " $R '$word' $N  appears $G $count $N times in file " 
    done 
   

}
wordcount  | mail -s "mailalert" vishnudevops2024@gmail.com

