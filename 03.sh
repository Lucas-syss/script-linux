#!/bin/bash


# Confirma que o script e rodado dentro do script_sample_folder
if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

# Valida se o argumento está vazio, se estiver retornar um erro e parar o programa
if [ $# -ne 1 ]; then
    echo "Erro: Por favor, forneça um argumento para apagar o conteúdo das pastas com o dado argumento."
    exit 1
fi

# Apagar o conteúdo de todas as pastas que contém o argumento fornecido no seu nome.
for pasta in ./*; do
    if [[ $(basename $pasta) == *$1* ]]; then
        rm -rf $pasta/* 
    fi
done

echo "Conteudo apagado com sucesso!"