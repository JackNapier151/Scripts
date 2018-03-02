#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** Manejador del Daemon de Teamviewer *** "
echo " * Descargar: teamviewer.com *"
echo " SELECCIONA UNA OPCION:"
echo " 1.-Iniciar Daemon"
echo " 2.-Reiniciar Daemon"
echo " 3.-Parar Daemon"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) sudo teamviewer --daemon start;;
	2) sudo teamviewer --daemon restart;;
	3) sudo teamviewer --daemon stop;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
