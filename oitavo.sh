#!/bin/bash
#
# oitavo.sh - Nosso Oitavo Programa em Shell - Laço de reptição For 
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# ------------------------------------------------------------------------
#
# Este progroma ira ira mostrar uma mensagem na tela para cada arquivo .conf encontrado no diretorio /etc.
#
#
# Exemplo de exceção:
#
# $./oitavo.sh 
# O arquivo /etc/xyz.conf foi encontrado no diretório /etc.
#
# 
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL

ARQUIVOS="/etc/*.conf"

echo
echo "Bem vindo ao programa de Listagem de Confs"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretório /etc/."
done

exit 0


