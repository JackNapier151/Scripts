#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
root=$(whoami)
if [ $root = "root" ];
	then
	echo " *** SCRIPT PARA CERRAR SESSION *** "
	echo " SELECCIONA UNA OPCIÓN:"
	echo " 1.-Cerrar este usuario"
	echo " 2.-Cerrar otro usuario"
	echo " 0.-Salir"
	echo ""
	read -p "OPCIÓN: " OPCION
	case $OPCION in
		0) exit 0;;
		1)	echo " SELECCIONA UNA OPCIÓN:"
			echo " 1.-Cerrar la sesion"
			echo " 2.-Forzar el cierre"
			echo " 0.-Salir"
			echo ""
			usuario=$(whoami)
			read -p "OPCIÓN: " OPCION1
			case $OPCION1 in
				0) exit;;
				1) pkill -STOP -u $usuario;;
				2) pkill -KILL -u $usuario;;
				*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
				:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
				?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
			esac
			exit 0
			;;
		2)  read -p "Nombre del usuario: " otrousuario
			echo ""
			echo " SELECCIONA UNA OPCIÓN:"
			echo " 1.-Cerrar la sesion"
			echo " 2.-Forzar el cierre"
			echo " 0.-Salir"
			echo ""
			read -p "OPCIÓN: " OPCION2
			case $OPCION2 in
				0) exit;;
				1) pkill -STOP -u $otrousuario;;
				2) pkill -KILL -u $otrousuario;;
				*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
				:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
				?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
			esac
			exit 0
			;;
		*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
		:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
		?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
	esac
	exit 0

else
	echo 'No puedes activar el Script, no eres Root'
	exit 1
fi
exit 0
