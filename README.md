# Exercícios Práticos de Shell Script

## 01.sh:
### Criar .txt
O script deve ser capaz de:
- Criar um arquivo .txt em cada repositório de script_sample_folder;
- Cada arquivo .txt deve ter nome igual a "script_sample_folder-<nome do folder>".

---

## 02.sh:
### Renomear Pastas
O script deve ser capaz de:
- Renomear todos os diretórios em script_sample_folder para "<prefixo qualquer>-<nome atual da pasta>";
- Receber um prefixo qualquer como argumento de quem evoca o script.

---

## 03.sh:
### Deletar conteúdo
O script deve ser capaz de:
- Deletar todo o conteúdo de um determinada diretório de script_sample_folder;
- Receber um caracter qualquer como argumento de quem evoca o script;
- Aplicar a deleção de conteúdo somente em diretórios de script_sample_folder que contenham o dado caracter.
  
---

## 04.sh:
### Deletar diretórios
O script deve ser capaz de:
- Deletar diretórios de script_sample_folder;
- Receber um argumento booleano de quem evoca o script;
- Caso o argumento booleano seja passado, deletar todos os diretórios de script_sample_folder;
- Caso o argumento booleano não seja passado, deletar somente aqueles diretórios que têm conteúdo dentro.
