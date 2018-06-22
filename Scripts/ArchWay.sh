#! /usr/bin/env bash
# -*- coding: utf-8 -*-

dire='./Scripts/ArchWay'
clear
echo " *** Recopilacion de Scripts ArchWay *** "
echo " SELECCIONA UN SCRIPT:"
echo " 1.-Crear Carpetas y Descargar con Git los PKGBUILDs de Arch y ArchBased (ArchWay-CreatedPKGBUILDs.sh)"
echo " 2.-Actualizar con Git los PKGBUILDs de Arch y ArchBased (ArchWay-UpgradePKGBUILDs.sh)"
#echo " 3.-Crear Carpetas y Descargar con Rsync Repositorios de Arch y ArchBased (ArchWay-CreatedRepository.sh)"
#echo " 4.-Actualizar con Rsync Repositorios de Arch y ArchBased (ArchWay-UpgradeRepository.sh)"
echo ""
echo " 99.-Informacion Distros PKGBUILDs y Repositorios"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) sh $dire-CreatedPKGBUILDs.sh;;
	2) sh $dire-UpgradePKGBUILDs.sh;;
	#3) sh $dire-CreatedRepository.sh ;;
	#4) sh $dire-UpgradeRepository.sh ;;
	99) sh $dire-Info.sh ;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
