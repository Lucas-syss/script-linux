#!/bin/bash

# Confirma que o script e rodado dentro do script_sample_folder
if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

# Validar se argumento e booleano(0 ou 1) e confirma se o argumento nao esta vazio
if [ $# -ne 1 ] || [[ "$1" != "1" && "$1" != "0" ]]; then
    echo "Erro: Passe um valor booleano: 0 ou 1"
    exit 1
fi

if [[ "$1" == "0" ]]; then
    # Apagar apenas diretorios com conteudo
    for pasta in */; do
        if [ -d "$pasta" ] && [ "$(ls -A "$pasta")" ]; then
            rm -rf "$pasta"
        fi
    done
    echo "Diretórios com conteúdo apagados com sucesso"
else
    # Apagar todos os diretorios dentro da pasta script_sample_folder
    for pasta in */; do
        rm -rf "$pasta"
    done
    echo "Diretórios apagados com sucesso"
fi