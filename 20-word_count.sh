#!/bin/bash

echo "Lorem ipsum dolor sit sit amet et cetera." | tr '[:space:]' '[\n*]' | grep -v "^\s*$" | sort | uniq -c | sort -bnr
