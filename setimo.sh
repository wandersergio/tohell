#!/bin/bash
#
# setimo.sh - Nosso Setimo Programa em Shell - Laço de reptição Until
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# ------------------------------------------------------------------------
#
# Este progroma ira verificar o valor da variavel NUMERO, enquanto o valor da variavel não for 10, ele ira mostrar a mensagem na tela que o valor não é 10 e mostrara o valor da 
# variavel, quando o valor atingir 10 o programa será finalizado.
#
#
# Exemplo de exceção:
#
# $./setimo.sh 
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
echo "Bem vindo ao programa de numeros"
echo

until [ $NUMERO -eq "10" ]; do
	echo "O valor da variavel é: $NUMERO"
	echo "o $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0


