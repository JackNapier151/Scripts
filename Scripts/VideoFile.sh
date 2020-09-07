#! /usr/bin/env bash
# -*- coding: utf-8 -*-
dire='./Scripts'
clear
echo " *** Recopilacion de Scripts VideoFile *** "
echo " SELECCIONA UN SCRIPT:"
echo " 1.-Convertir los MP4 a MKV (VideoFile-ConvertMP4ToMKV.sh)"
echo " 2.-Extractor de Videos de las Carpetas (VideoFile-DirExtractor.sh)"
echo " 3.-Descargar un video en Directo (VideoFile-DownDirect.sh)"
echo " 4.-Partir archivos en Trozos de 2G (VideoFile-Troceador.sh)"
echo ""
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) sh $dire/VideoFile-ConvertMP4ToMKV.sh;;
	2) sh $dire/VideoFile-DirExtractor.sh;;
	3) sh $dire/VideoFile-DownDirect.sh ;;
	4) sh $dire/VideoFile-Troceador.sh ;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
