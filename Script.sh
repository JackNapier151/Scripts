#! /usr/bin/env bash
# -*- coding: utf-8 -*-
dire='./Scripts'
clear
echo " *** Recopilacion de Scripts *** "
echo " SELECCIONA UN SCRIPT:"
echo " 1.-Salir del equipo (ShutdownApp.sh)"
echo " 2.-Salir del equipo mediante Sytemctl (SystemctlApp.sh)"
echo " 3.-Cerrar sesion (CerrarSesion.sh)[Alpha]"
echo " 4.-Daemon OpenSSH (OpenSSHDaemon.sh)"
echo " 5.-Daemon MiniDLNA (MiniDLNADaemon.sh)"
echo " 6.-Daemon TeamViewer (DaemonTeamViewer.sh)"
echo " 7.-Hackear Windows (HackConWin.sh)[Alpha]"
echo " 8.-Informacion de la IP (NetworkIP.sh)"
echo " 9.-Editar Espacio Temporal /tmp (EditTmp.sh)"
echo " 10.-Ver Todos Los Colores en la Terminal (ColorBash.sh)"
echo ""
#echo " X.-Instalar Latino (InstallLatino.sh)[NoDisponible]"
#echo " X.-Instalar Manualmente desde AUR (AURInstall.sh)[NoDisponible]"
echo " 99.-Cosas Relacionadas Con ArchLinux y ArchBased (ArchWay.sh)"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) sh $dire/ShutdownApp.sh;;
	2) sh $dire/SystemctlApp.sh;;
	3) sh $dire/CerrarSesion.sh ;;
	4) sh $dire/OpenSSHDaemon.sh ;;
	5) sh $dire/MiniDLNADaemon.sh;;
	6) sh $dire/DaemonTeamViewer.sh;;
	7) sh $dire/HackConWin.sh;;
	8) sh $dire/NetworkIP.sh;;
	9) sh $dire/EditTmp.sh;;
	10) sh $dire/ColorBash.sh;;
	10) sh $dire/ArchWay.sh;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
