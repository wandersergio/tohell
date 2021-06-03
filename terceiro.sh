#!/bin/bash
#
# tercero.sh - Nosso terceiro Programa em Shell - Condicional if then else
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este progroma ira capturar o primeiro parametro digitado, era armazenada na variavel $1 e ira comparar com o valor da variavel SEGREDO.  Se os valores forem iguais ira mostrar que foi re# velado o segredo na tela, se não for igual, ira mostrar um erro.
#
# Exemplo de exceção:
#
# $./terceiro.sh utah
# Meus Parabéns voce acertou o segredo. Voce esta na melhor em Linux do Brasil
# $ .terceiro.sh blue
# ERROU Esta perdendo tempo na blue
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo
echo "Bem Vindo ao Detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo " Meus Parabéns, você acertou o segredo. Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU, Esta perdendo o seu tempo na $1"
	echo
fi
