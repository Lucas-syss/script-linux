#!/bin/bash

if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

if [ $# -ne 1 ]; then
    echo "Erro: Por favor, forneça um argumento para renomear a pasta."
    exit 1
fi

for pasta in ./*; do
    mv -- "$pasta" "$1-$(basename "$pasta")"
done
