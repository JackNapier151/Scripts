#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** Informacion de la IP *** "
echo " SELECCIONA UNA OPCION:"
echo " 1.-Local"
echo " 2.-Publico"
echo " 0.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit ;;
	1)	echo ""
		echo " Selecciona Suit de Herramientas:"
		echo " 1.-NetTools (ifconfig)"
		echo " 2.-IpRoute2 (ip)"
		echo " 0.-Salir"
		echo ""
		read -p "OPCIÓN: " OPCION2
		case $OPCION2 in
			0) exit ;;
			1) ifconfig | grep -oiE '([0-9]{1,3}\.){3}[0-9]{1,3}' | grep -v 255 | grep -v 127 ;;
			2) ip addr | grep -oiE '([0-9]{1,3}\.){3}[0-9]{1,3}' | grep -v 255 | grep -v 127 ;;
			*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
			:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
			?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
			esac
			exit 0
	;;
	2) 	echo ""
		echo " Selecciona la opcion que quieras usar:"
		echo " 1.-Configuracion Rapida IP (ifconfig.co y Curl)"
		echo " 2.-Configuracion a tu Gusto"
		echo " 0.-Salir"
		echo ""
		read -p "OPCIÓN: " OPCION3
		case $OPCION3 in
			0) exit ;;
			1) curl ifconfig.co/ip ;;
			2)  echo ""
				echo " Selecciona la Aplicacion que quieres usar:"
				echo " 1.-Curl"
				echo " 2.-Wget"
				echo " 3.-Httpie"
				echo " 4.-Fetch"
				echo " 0.-Salir"
				echo ""
				read -p "OPCIÓN: " OPCION4
				case $OPCION4 in
					0) exit ;;
					1) APP="curl" ;;
					2) APP="wget -qO-" ;;
					3) APP="http -b" ;;
					4) APP="fetch -qo-" ;;
					*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
					:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
					?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
				esac

				echo ""
				echo " Selecciona la el servidor que quieres usar:"
				echo " 1.-ifconfig.co"
				echo " 2.-ifconfig.me"
				echo " 0.-Salir"
				echo ""
				read -p "OPCIÓN: " OPCION5
				case $OPCION5 in
					0) exit ;;
					1) PAG="http://ifconfig.co" ;;
					2) PAG="http://ifconfig.me" ;;
					*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
					:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
					?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
				esac

				if [[ $PAG = "http://ifconfig.co" ]]; then
					echo ""
					echo " Selecciona la Informacion que quieres ver:"
					echo " 1.-IP"
					echo " 2.-Pais"
					echo " 3.-Ciudad"
					echo " 4.-Json"
					echo " 0.-Salir"
					echo ""
					read -p "OPCIÓN: " OPCION6
					case $OPCION6 in
						0) exit ;;
						1) OPC="/ip" ;;
						2) OPC="/country" ;;
						3) OPC="/city" ;;
						4) OPC="/json" ;;
						*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
						:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
						?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
					esac
				elif [[ $PAG = "http://ifconfig.me" ]]; then
					echo ""
					echo " Selecciona la Informacion que quieres ver:"
					echo " 1.-IP"
					echo " 2.-Host"
					echo " 3.-Ua"
					echo " 4.-Port"
					echo " 5.-Lang"
					echo " 6.-KeepAlive"
					echo " 7.-Connection"
					echo " 8.-Encoding"
					echo " 9.-Mime"
					echo " 10.-Charset"
					echo " 11.-Via"
					echo " 12.-Forwaded"
					echo " 13.-All"
					echo " 14.-All XML"
					echo " 15.-All Json"
					echo " 0.-Salir"
					echo ""
					read -p "OPCIÓN: " OPCION6
					case $OPCION6 in
						0) exit ;;
						1) OPC="/ip" ;;
						2) OPC="/host" ;;
						3) OPC="/ua" ;;
						4) OPC="/port" ;;
						5) OPC="/lang" ;;
						6) OPC="/keepalive" ;;
						7) OPC="/connection" ;;
						8) OPC="/encoding" ;;
						9) OPC="/mime" ;;
						10) OPC="/charset" ;;
						11) OPC="/via" ;;
						12) OPC="/forwarded" ;;
						13) OPC="/all" ;;
						14) OPC="/all.xml" ;;
						15) OPC="/all.json" ;;
						*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
						:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
						?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
					esac
				fi


				$APP $PAG$OPC


			;;
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
