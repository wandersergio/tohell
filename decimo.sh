#!/bin/bash
#
# decimo.sh - Nosso Decimo Programa em Shell - Script de backup completp 
#
# Homepage: https://www.utah.com.br>
# Autor: Wanderson Sergio <wandersergio@hotmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# ------------------------------------------------------------------------
#
# Este progroma sera usado para realizar um bakup full de arquivos localizados em um servidor onde teremos que copiar a pasta /srv/samba.
#
#
# Exemplo de exceção:
#
# $./decimo.sh 
# 
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GPL
#
# BKDIR - Local onde será armazenado os aruivos de backup.
BKPDIR="/srv/backup/"
#
#FILEDIR - Local onde estão os arquivos de origem, que faremos backup.
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="/srv/backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="wanderramossilva@gmail.com"
SENDUSER="root@utah.local"

echo -e "\n"
echo "Iniciando o Script de Backup"
echo -e "\n"


verificar() {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	mail_err
	exit 1
fi
}

mail() {
	
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de backup" -a $LOGFILE -m "Segue"
}

mail_err(){
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Erro no BAckup" -a $ERRORLOG -m "Segue"
	

rsync - avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERROLOG
verificar
mail

[ -f "$COMPACT" ] || $COMPACT
verificar

exit 0
