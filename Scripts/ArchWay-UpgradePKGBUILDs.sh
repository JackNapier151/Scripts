#! /usr/bin/env bash
# -*- coding: utf-8 -*-


cd ~/ArchWay/PKGBUILDs


# ArchLinux
echo "$(tput setaf 2)Empezando Con ArchLinux packages$(tput sgr 0)"
cd ./ArchLinux/packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado ArchLinux packages$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con ArchLinux community$(tput sgr 0)"
cd ./ArchLinux/community/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado ArchLinux community$(tput sgr 0)"

# ArchLinux 32
echo "$(tput setaf 2)Empezando Con ArchLinux 32$(tput sgr 0)"
cd ./ArchLinux32/packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado ArchLinux 32$(tput sgr 0)"

# ArchLinux ARM
echo "$(tput setaf 2)Empezando Con ArchLinux ARM$(tput sgr 0)"
cd ./ArchLinux/PKGBUILDs/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado ArchLinux ARM$(tput sgr 0)"


# Parabola GNU/Linux-Libre
echo "$(tput setaf 2)Empezando Con Parabola$(tput sgr 0)"
cd ./Parabola/abslibre/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Parabola$(tput sgr 0)"



# Hyperbola GNU/Linux-Libre
echo "$(tput setaf 2)Empezando Con Hyperbola community$(tput sgr 0)"
cd ./Hyperbola/community/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Hyperbola community$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Hyperbola core$(tput sgr 0)"
cd ./Hyperbola/core/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Hyperbola core$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Hyperbola extra$(tput sgr 0)"
cd ./Hyperbola/extra/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Hyperbola extra$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Hyperbola multilib$(tput sgr 0)"
cd ./Hyperbola/multilib/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Hyperbola multilib$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Hyperbola packages$(tput sgr 0)"
cd ./Hyperbola/packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Hyperbola packages$(tput sgr 0)"



# Otros

# BlackArch
echo "$(tput setaf 2)Empezando Con BlackArch$(tput sgr 0)"
cd ./blackarch/ && git pull && cd ..
echo "$(tput setaf 1)Terminado BlackArch$(tput sgr 0)"

# ArchStrike
echo "$(tput setaf 2)Empezando Con ArchStrike$(tput sgr 0)"
cd ./ArchStrike/ && git pull && cd ..
echo "$(tput setaf 1)Terminado ArchStrike$(tput sgr 0)"

# Antergos
echo "$(tput setaf 2)Empezando Con Antergos$(tput sgr 0)"
cd ./antergos-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado Antergos$(tput sgr 0)"

# ArchLabs
echo "$(tput setaf 2)Empezando Con ArchLabs$(tput sgr 0)"
cd ./Archlabs-PKGBUILD/ && git pull && cd ..
echo "$(tput setaf 1)Terminado Archlabs$(tput sgr 0)"

# SwagArch
echo "$(tput setaf 2)Empezando Con SwagArch$(tput sgr 0)"
cd ./swagarch-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado SwagArch$(tput sgr 0)"

# BrinkOS
echo "$(tput setaf 2)Empezando Con BrinkOS$(tput sgr 0)"
cd ./brinkOS-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado BrinkOS$(tput sgr 0)"

#UBOS
echo "$(tput setaf 2)Empezando Con UBOS$(tput sgr 0)"
cd ./ubos-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado UBOS$(tput sgr 0)"

# ArchMan
echo "$(tput setaf 2)Empezando Con ArchMan$(tput sgr 0)"
cd ./archman-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado ArchMan$(tput sgr 0)"

# Artix
echo "$(tput setaf 2)Empezando Con Artix$(tput sgr 0)"
cd ./Artix/packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Artix$(tput sgr 0)"

# Arco
echo "$(tput setaf 2)Empezando Con Arco$(tput sgr 0)"
cd ./arcolinux-pkgbuild/ && git pull && cd ..
echo "$(tput setaf 1)Terminado Arco$(tput sgr 0)"

# Revenge
echo "$(tput setaf 2)Empezando Con Revenge$(tput sgr 0)"
cd ./Revenge/obr-packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Revenge$(tput sgr 0)"


echo "$(tput setaf 6)Completado$(tput sgr 0)"
