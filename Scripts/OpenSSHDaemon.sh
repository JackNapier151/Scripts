#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** Manejador del Daemon de OpenSSH (SystemCTL)*** "
echo " * Descargar: openssh.com *"
echo " SELECCIONA UNA OPCION:"
echo " 1.-Iniciar Daemon"
echo " 2.-Reiniciar Daemon"
echo " 3.-Parar Daemon"
echo " 4.-Activar Daemon al Inicio del Arranque"
echo " 5.-Desactivar Daemon al Inicio del Arranque"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) sudo systemctl start sshd.socket;;
	2) sudo systemctl restart sshd.socket;;
	3) sudo systemctl stop sshd.socket;;
	3) sudo systemctl enable sshd.socket;;
	3) sudo systemctl disable sshd.socket;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
