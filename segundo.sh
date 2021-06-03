#!/bin/bash
#
# segundo.sh - Nosso segundo Programa em Shell - Váriaveis de controle internas do Shell
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este progroma era mostrar as pricipais variaveis de controles internas do Shell, que poderã ser usadas por outros programas a fim de obtermos alguma informação.
#
# Exemplo de exceção:
#
# $./segundo.sh linux
#
# O valor de Variavel $1 é linux
# $ ./segundo.sh linux windows
# O Valor da Variavel $1 é linux
# O valor da Variavel $2 é windows
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL

echo "Bem Vindo as Variaveis de Controle OInternas do Shell"
echo
echo "A variavel \$1 armazena o primeiro parametro passado depos do script, que foi: $1" 
echo 
echo "A variavel \$2 armazena o segundo parametro passado depos do script, que foi: $2" 
echo
echo "A variavel \$3 armazena o terceiro parametro passado depos do script, que foi: $3" 
echo
echo "A variavel \$0 armazena o comando que foi executado| nome do programa, que foi: $0"
echo
echo "A Variavel \$# armazena o numero de parametro que foram passados, que foram $#"
echo
echo "A Variavel \$\$ ou \$@ armazena o numero PID do processo gerado na execução do programa, que foi: $$"
echo
echo "A Variavel \$? armazena o valor de retorno do ultimo comando|programa executado, que foi: $?"
echo
