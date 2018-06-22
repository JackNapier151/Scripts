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
echo "$(tput setaf 2)Empezando Con BlackArch$(tput sgr 0)"
cd ./blackarch/ && git pull && cd ..
echo "$(tput setaf 1)Terminado BlackArch$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con ArchStrike$(tput sgr 0)"
cd ./ArchStrike/ && git pull && cd ..
echo "$(tput setaf 1)Terminado ArchStrike$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Antergos$(tput sgr 0)"
cd ./antergos-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado Antergos$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con ArchLabs$(tput sgr 0)"
cd ./Archlabs-PKGBUILD/ && git pull && cd ..
echo "$(tput setaf 1)Terminado Archlabs$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con SwagArch$(tput sgr 0)"
cd ./swagarch-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado SwagArch$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con BrinkOS$(tput sgr 0)"
cd ./brinkOS-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado BrinkOS$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con UBOS$(tput sgr 0)"
cd ./ubos-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado UBOS$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con ArchMan$(tput sgr 0)"
cd ./archman-packages/ && git pull && cd ..
echo "$(tput setaf 1)Terminado ArchMan$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Artix-Linux$(tput sgr 0)"
cd ./ArtixLinux/packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado Artix-Linux$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con ArcoLinux$(tput sgr 0)"
cd ./arcolinux-pkgbuild/ && git pull && cd ..
echo "$(tput setaf 1)Terminado ArcoLinux$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con RevengeLinux$(tput sgr 0)"
cd ./RevengeLinux/obr-packages/ && git pull && cd ../..
echo "$(tput setaf 1)Terminado RevengeLinux$(tput sgr 0)"


echo "$(tput setaf 6)Completado$(tput sgr 0)"
