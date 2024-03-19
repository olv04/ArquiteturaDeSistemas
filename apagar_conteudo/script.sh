#!/bin/bash

read -p "Enter the character: " character

directory="./script-sample-folder"

for dir in "$directory"/*; do
    
    if [[ "$dir" == *"$character"* ]]; then
        rm -rf "$dir"/*
    fi
done
