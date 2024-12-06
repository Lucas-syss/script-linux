#!/bin/bash


# Confirma que o script e rodado dentro do script_sample_folder
if [ "$(basename "$PWD")" != "script_sample_folder" ]; then
    echo "Erro: Este script deve ser executado dentro da pasta script_sample_folder."
    exit 1
fi


# Inserir ficheiros txt em todas as pastas em script_sample_folder com o nome script_sample_folder-(nome_da_pasta)
for pasta in ./*; do 
    touch "$pasta/script_sample_folder-$(basename $pasta).txt"
done

echo "TXT inseridos com sucesso!"    