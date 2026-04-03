#!/bin/bash

FIFO="/tmp/cava.fifo"

bars=("▁" "▂" "▃" "▄" "▅" "▆" "▇" "█")

while read -r line; do
    output=""
    for i in $line; do
        output+="${bars[$i]}"
    done
    echo "{\"text\": \"$output\"}"
done < "$FIFO"
