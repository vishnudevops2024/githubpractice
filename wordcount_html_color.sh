#!/bin/bash

wordcount() {
    echo "<html>"
    echo "<head>"
    echo "MIME-Version: 1.0"
    echo "Content-Type: text/html"
    echo "Content-Disposition: inline"
    echo "<style>"
    echo "  .red { color: red; }"
    echo "  .green { color: green; }"
    echo "</style>"
    echo "</head>"
    echo "<body>"

    cat wordcount1.txt | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 5 |
    while read -r count word;  
    do
        echo "<p>'<span class=\"red\">$word</span>' appears <span class=\"green\">$count</span> times in file</p>"
    done 

    echo "</body>"
    echo "</html>"
}

wordcount | mail -s "WORDCOUNT ALERT" vishnudevops2024@gmail.com
