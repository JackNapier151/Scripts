#! /usr/bin/env bash
# -*- coding: utf-8 -*-

clear
echo " *** SCRIPT PARA INSTALAR PACKAGES DE ATOM MEDIANTE APM *** "
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Ver lista de Paquetes Instalados"
echo " 2.-Ver Lista de Paquetes Para Instalar"
echo " 3.-Instalar los Paquetes"
echo " 4.-Desistalar los Paquetes"
echo " 5.-Actualizar los Paquetes"
echo " 0.-Salir"
echo ""
atom="advanced-open-file atom-autocomplete-php atom-beautify atom-clock autoclose-html autocomplete-java autocomplete-modules autocomplete-php autocomplete-plus autocomplete-python autocomplete-xml autoprefixer busy-signal color-picker css-comb docblockr emmet file-icons fonts git-control git-plus git-time-machine gitlab gitlab-integration goto-definition highlight-selected intentions language-jade language-latex language-latexsimple language-latino language-postcss linter linter-gcc linter-htmlhint linter-jshint linter-less linter-php linter-spell linter-spell-html linter-ui-default merge-conflicts minimap minimap-bookmarks minimap-cursorline minimap-find-and-replace minimap-git-diff minimap-highlight-selected minimap-pigments minimap-selection open-recent php-cs-fixer php-debug php-hyperclick pigments platformio-ide-terminal remember-file-positions script sync-settings teletype todo-show tree-view-git-status tree-view-git-branch w3c-validation"
read -p "OPCIÓN: " OPCION
case $OPCION in
	0) exit;;
	1) apm list;;
	2) for src in $atom ; do
		echo $src;
	done;;
	3) apm install $atom;;
	4) apm uninstall $atom;;
	5) apm upgrade;;
	*) echo "Error: Opcion no valida. Saliendo"; exit 1 ;;
	:) echo "Error: Está faltando un argumento en alguna parte. Saliendo"; exit 1 ;;
	?) echo "Error: Indicador no válido en alguna parte. Saliendo"; exit 1 ;;
esac
exit 0
