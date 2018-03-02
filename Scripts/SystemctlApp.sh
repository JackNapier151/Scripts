#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** SCRIPT PARA EL APAGADO DEL EQUIPO POR SYSTEMCTL *** "
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Apagar equipo"
echo " 2.-Reiniciar equipo"
echo " 3.-Suspender equipo"
echo " 4.-Hibernar equipo"
echo " 5.-Reposar equipo de forma Hibrida"
echo " 6.-Suspender equipo de Forma Combinada"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) sudo systemctl poweroff;;
	2) sudo systemctl reboot;;
	3) sudo systemctl suspend;;
	4) sudo systemctl hibernate;;
	5) sudo systemctl hybrid-sleep;;
	6) sudo systemctl suspend-to-both;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
