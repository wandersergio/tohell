#!/bin/bash
#
# decimo.sh - Nosso Decimo Programa em Shell - Mr. Robot 
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# ------------------------------------------------------------------------
#
# Este progroma é um robointerativo, estilo alexia, Chamado Mr Robot criado para invador determinadas URLs, buscar vulnerabilidades e também verificar conectividades.
#
#
# Exemplo de exceção:
#
# $./mr.robot.sh 
#
# 
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL
#
#
#
source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOla eu sou o Mr. Robot. Fui criado para atacar. Não sou seu amigo Mas diga:\nO que você quer que eu faça?\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga Agora!" ACTION
        echo -e "\n"

	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${sites[$DADO]}"
		;;
		*"nmap"*|*"mapear"*|*"portas abertas"*|*"mapeando"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADO]}"
 		;;
		*"conecte"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM % 4 ))"
			ssh -l root "${openssh[$DADO]}"
		;;

	esac
done




