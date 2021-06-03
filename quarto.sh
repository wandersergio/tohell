#!/bin/bash
#
# quarto.sh - Nosso quarto Programa em Shell - Condicional if then else
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este progroma ira capturar o valor digitado, ira armazenar na variavel $DIGITADO e comparar com o valor da variavel SEGREDO.  Se os valores forem iguais ira mostrar que foi re# velado o # segredo na tela, se não for igual, ira mostrar um erro.
#
# Exemplo de exceção:
#
# $./quarto.sh utah
# Digite o Segredo:
# Meus Parabéns voce acertou o segredo. Voce esta na melhor em Linux do Brasil
# $ .quarto.sh 
# Digite o Segredo:
# blue
# ERROU Esta perdendo tempo na blue
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo
echo "Bem Vindo ao Detector de Segredos"
echo
echo "Por favor, digite o segredo:"
# read ira ler o que o usuario digitou e armazena na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo " Meus Parabéns, você acertou o segredo. Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU, Esta perdendo o seu tempo na $DIGITADO"
	echo
fi
