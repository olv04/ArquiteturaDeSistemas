#!/bin/bash

repositories=$(find ~/ETIC-23-25/Script-Criar-txt/script-sample-folder -type d)

for repo in $repositories; do
    echo "script_sample_folder-$(basename $repo)" > "$repo/file.txt"
done
