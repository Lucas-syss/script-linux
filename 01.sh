#!/bin/bash

if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

pastas=./*

for pasta in $pastas; do 
    touch "$pasta/script_sample_folder-$(basename $pasta).txt"
done

echo "TXT inseridos com sucesso"    