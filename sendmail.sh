#!/bin/bash



R=$"\e[31m"
G=$"\e[32m"
N=$"\e[0m"


wordcount() {

echo "Content-Type : text\html"
echo 
echo "<html>"
echo "<body>"
echo "<h3 style='color:red'> wordcount checking </h3>"
echo "sample test mail"
echo "</body>"
echo "</html>"
cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
  while read -r count word;  
  do
        echo -e  " '$word' appears $count  times in file " 
    done 
   

}
wordcount  | mail -s "mailalert" vishnudevops2024@gmail.com

