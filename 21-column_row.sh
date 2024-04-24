#!/bin/bash

# Transpose the input table using awk
awk '{
    for (i = 1; i <= NF; i++) {
        if (NR == 1) {
            header[i] = $i;
        } else {
            data[i][NR - 1] = $i;
        }
    }
}
END {
    for (i = 1; i <= NF; i++) {
        printf("%s\t", header[i]);
        for (j = 1; j <= NR - 1; j++) {
            printf("%s\t", data[i][j]);
        }
        printf("\n");
    }
}' column_row.txt | | mail -s "Column_row" vishnudevops2024@gmail.com



