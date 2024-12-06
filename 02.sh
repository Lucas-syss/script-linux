#!/bin/bash


# Confirma que o script e rodado dentro do script_sample_folder
if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

# Valida se o argumento para renomear as pastas está vazio, se estiver retornar um erro e parar o programa.
if [ $# -ne 1 ]; then
    echo "Erro: Por favor, forneça um argumento para renomear a pasta."
    exit 1
fi

# Renomeia todas as pastas em script_sample_folder para (argumento-nome_atual_da_pasta)
for pasta in ./*; do
    mv -- "$pasta" "$1-$(basename "$pasta")"
done

echo "Diretórios renomeados com sucesso!"
