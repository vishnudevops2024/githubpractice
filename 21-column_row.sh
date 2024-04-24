#!/bin/bash

#cat column_row.txt | tr '\n'


while IFS= read -r line; do
    # Skip the header line
    if [[ ! $line =~ ^Name ]]; then
        # Convert each line into rows using awk
        echo "$line" | awk '{print $1 "\t" $2}'
    fi
done < "column_row.txt"