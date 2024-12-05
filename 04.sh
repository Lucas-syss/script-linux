#!/bin/bash

if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi

if [ $1 != "1" -a $1 != "0" ]; then
    echo "Erro: Passe um valor booleano: 0 ou 1"
    exit 1
fi

