#! /usr/bin/env bash
# -*- coding: utf-8 -*-

echo " *** Aumentar Tamaño /tmp *** "
echo " SELECCIONA UNA OPCION:"
echo " 1.-Forma Temporal (Remount)"
echo " 2.-Forma Definitiva (fstab)"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0)	exit;;
  1|2)	echo ""
		echo " *** Tamaño que le quieres dar: *** "
		echo " Tiene que Quedar de Esta Forma : XY"
		echo " Ejemplo: 10G "
		echo " X.-El espacio que quieres que ocupe"
		echo " Y.-El Multiplicador que quieres usar G=Gigas M=Megas"
		echo " 0.-Salir"
		echo ""
		read -p "Tamaño: " TAMANO
		case $TAMANO in
			0)	exit;;
			*)	echo ""
				echo "Tamaño Anterior:"
				df | grep /tmp
				if [[ $OPCION == 2 ]]; then
					echo "tmpfs /tmp tmpfs nodev,nosuid,size=$TAMANO 0  0" >> /etc/fstab
				fi
				echo "Tamaño Actual"
				sudo mount -o remount,size=$TAMANO /tmp
				df | grep /tmp
				;;
		esac
		;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
