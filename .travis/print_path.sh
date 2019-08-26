#!/bin/bash

IFS=':' read -ra patharray <<< "$PATH"

for p in "${patharray[@]}"
do
    echo "=================="
    echo "Searching in $p..."
    find "$p" -name "*.dll" -maxdepth 1
done