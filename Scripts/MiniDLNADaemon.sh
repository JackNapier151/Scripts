#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** Manejador del Daemon de MiniDLNA (SystemCTL)*** "
echo " * Descargar: sourceforge.net/projects/minidlna *"
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
	1) sudo systemctl start minidlna.service;;
	2) sudo systemctl restart minidlna.service;;
	3) sudo systemctl stop minidlna.service;;
	3) sudo systemctl enable minidlna.service;;
	3) sudo systemctl disable minidlna.service;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
