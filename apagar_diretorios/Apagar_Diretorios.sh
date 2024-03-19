#!/bin/bash

folder_path="./script-sample-folder"


if [ ! -d "$folder_path" ]; then
  echo "O diretório '$folder_path' não existe."
  exit 1
fi

if [ $# -gt 0 ]; then
  echo "A apagar todos os diretórios dentro de '$folder_path'..."
  find "$folder_path" -mindepth 1 -type d -exec rm -rf {} +
else
  echo "A apagar diretórios não vazios dentro de '$folder_path'..."

  find "$folder_path" -mindepth 1 -type d ! -empty -exec rm -rf {} +
fi

echo "Operação concluída."


