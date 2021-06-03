#!/bin/bash
#
# sexto.sh - Nosso Sexto Programa em Shell - Laço de reptição
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel for menor que 10, ele ira mostrar a mensagem na tela que o valor eh menor que 10 e mostrara
# variavel, quando o valor atingir 10 o programa será finalizado.
#
# Exemplo de exceção:
#
# $./sexto.sh 
# O valor da Variavel é 0, que é menor que 10.
# O valor da Variavel é 1, que é menor que 10;
# Iniciando o programa.
# 
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem vindo ao Programa de Numeros"
echo

while [ $NUMERO -lt "10" ]; do
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0

