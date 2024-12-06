#!/bin/bash

if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

if [ $# -ne 1 ]; then
    echo "Erro: Por favor, forneça um argumento para apagar o conteudo das pastas com o dado argumento."
    exit 1
fi

for pasta in ./*; do
    if [[ $(basename $pasta) == *$1* ]]; then
        rm -rf $pasta/* 
    fi
done

echo "Conteudo apagado com sucesso"