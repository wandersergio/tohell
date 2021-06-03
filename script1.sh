#!/bin/bash

# script01.sh Emulação do comando seq em Bash
#
# O comando seq recebe dois numeros e mostra na saida padrao todos os numeros
# existentes entre eles, numa sequencia pronta para ser usada pelo comenado for. Caso omitido o 
#numero inicial, é utulizado 1.
#

O=+
# Declara o valor da variavel O sendo + (soma)
A=1 
# Declara o valor da variavel A igual a 1
Z=${1:-1}
# caso o parametro não seja declarado a variavel Z tera o mesmo valor do parametro informado ($1)

[ "$2" ] && { 
	A=$1
	Z=$2
 } 
# Se o segundo parametro for informado $2 a variavel A recebera o primeiro parametro $1 e a variavel Z o segundo parametro $2

[ $A -gt $Z ] && O=-
# Se o valor da variavel A for maior que o valor da variavel Z a variavel O será decalrada como sinal de "-" (subtração).

while [ $A -ne $Z ]; do 
	echo $A 
       	eval "A=\$((A$O 1))"
done
# enquanto o valor da variavel

echo $A
# Mostra o valor de A
