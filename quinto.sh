#!/bin/bash
#
# quinto.sh - Nosso Quinto Programa em Shell - Condicional case
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este progroma ira capturar o primeiro parametro passado depois do programa e ira armazenar na variavel $1, caso o valor seja start, executar o trecho do comando start, caso seja stop exe# cutara o comando stop, caso seja status executar o trecho status e caso não seja nenhum dos valores acima erá mostra a mensagem para usar os valores start, stop, status.
#
# Exemplo de exceção:
#
# $./quinto.sh start
# Bem vindo ao Programa Stronger.
# Iniciando o programa.
# ...
# .......
# .................
# .......................
# ............................
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL


PID="/tmp/stronger.pid"
echo
echo "Bem Vindo ao Stronger"
echo
case $1 in
	start)
		echo
		echo "iniciando o programa Stronger"
		echo "........"
		sleep 2s
		echo ".............."
		sleep 2s
		echo "....................."
		sleep 2s
		echo "..............................."
		touch $PID
		echo "Programa Stronger Iniciado com Sucesso"
		;;
	stop)
		echo "Parando o programa Stronger"
		echo "........"
		sleep 2s
		echo ".............."
		sleep 2s
		echo "....................."
		sleep 2s
		echo "..............................."
		rm $PID
		echo "Programa Stronger parado com Sucesso"
		;;
	status)
		echo
		echo "Verificando o Status Stronger"
		echo
		if [ -f "$PID" ]; then
			echo "O programa streonger esta em execução"
		else
			echo "O programa stronger está parado."
		fi
		;;
	*)
		echo "Por favor Digite ./quinto start | stop| status"
		;;
esac

exit 0
