#! /usr/bin/env bash
# -*- coding: utf-8 -*-

cd ~

mkdir ./ArchWay ./ArchWay/PKGBUILDs
cd ./ArchWay/PKGBUILDs


# ArchLinux
echo "$(tput setaf 2)Empezando Con ArchLinux$(tput sgr 0)"
mkdir ./ArchLinux
cd ./ArchLinux
git clone --recurse-submodules https://git.archlinux.org/svntogit/packages.git
git clone --recurse-submodules https://git.archlinux.org/svntogit/community.git
cd ../..
echo "$(tput setaf 1)Terminado ArchLinux$(tput sgr 0)"

# ArchLinux 32
echo "$(tput setaf 2)Empezando Con ArchLinux 32$(tput sgr 0)"
mkdir ./ArchLinux32
cd ./ArchLinux32
git clone --recurse-submodules https://git.archlinux32.org/archlinux32/packages.git
cd ../..
echo "$(tput setaf 1)Terminado ArchLinux 32$(tput sgr 0)"

# ArchLinux ARM
echo "$(tput setaf 2)Empezando Con ArchLinux ARM$(tput sgr 0)"
mkdir ./ArchLinuxARM
cd ./ArchLinuxARM
git clone --recurse-submodules https://github.com/archlinuxarm/PKGBUILDs.git
cd ../..
echo "$(tput setaf 1)Terminado ArchLinux ARM$(tput sgr 0)"

# Parabola GNU/Linux-Libre
echo "$(tput setaf 2)Empezando Con Parabola$(tput sgr 0)"
mkdir ./Parabola
cd ./Parabola
git clone --recurse-submodules https://git.parabola.nu/abslibre.git
cd ../..
echo "$(tput setaf 1)Terminado Parabola$(tput sgr 0)"

# Hyperbola GNU/Linux-Libre
echo "$(tput setaf 2)Empezando Con Hyperbola$(tput sgr 0)"
mkdir ./Hyperbola
cd ./Hyperbola
git clone --recurse-submodules https://git.hyperbola.info:50100/packages/community.git
git clone --recurse-submodules https://git.hyperbola.info:50100/packages/core.git
git clone --recurse-submodules https://git.hyperbola.info:50100/packages/extra.git
git clone --recurse-submodules https://git.hyperbola.info:50100/packages/multilib.git
git clone --recurse-submodules https://git.hyperbola.info:50100/packages/packages.git
cd ../..
echo "$(tput setaf 1)Terminado Hyperbola$(tput sgr 0)"

# Otros

# BlackArch
echo "$(tput setaf 2)Empezando Con BlackArch$(tput sgr 0)"
git clone --recurse-submodules https://github.com/BlackArch/blackarch.git
cd ..
echo "$(tput setaf 1)Terminado BlackArch$(tput sgr 0)"

# ArchStrike
echo "$(tput setaf 2)Empezando Con ArchStrike$(tput sgr 0)"
git clone --recurse-submodules https://github.com/ArchStrike/ArchStrike.git
cd ..
echo "$(tput setaf 1)Terminado ArchStrike$(tput sgr 0)"

# Antergos
echo "$(tput setaf 2)Empezando Con Antergos$(tput sgr 0)"
git clone --recurse-submodules https://github.com/Antergos/antergos-packages.git
cd ..
echo "$(tput setaf 1)Terminado Antergos$(tput sgr 0)"

# ArchLabs
echo "$(tput setaf 2)Empezando Con ArchLabs$(tput sgr 0)"
git clone --recurse-submodules https://github.com/ARCHLabs/Archlabs-PKGBUILD.git
cd ..
echo "$(tput setaf 1)Terminado Archlabs$(tput sgr 0)"

# SwagArch
echo "$(tput setaf 2)Empezando Con SwagArch$(tput sgr 0)"
git clone --recurse-submodules https://gitlab.com/SwagArch/swagarch-packages.git
cd ..
echo "$(tput setaf 1)Terminado SwagArch$(tput sgr 0)"

# BrinkOS
echo "$(tput setaf 2)Empezando Con BrinkOS$(tput sgr 0)"
git clone --recurse-submodules https://github.com/brinkOS/brinkOS-packages.git
cd ..
echo "$(tput setaf 1)Terminado BrinkOS$(tput sgr 0)"

# UBOS
echo "$(tput setaf 2)Empezando Con UBOS$(tput sgr 0)"
git clone --recurse-submodules https://github.com/uboslinux/ubos-packages.git
cd ..
echo "$(tput setaf 1)Terminado UBOS$(tput sgr 0)"

# Archman
echo "$(tput setaf 2)Empezando Con ArchMan$(tput sgr 0)"
git clone --recurse-submodules https://gitlab.com/Archman-OS/archman-packages.git
cd ..
echo "$(tput setaf 1)Terminado ArchMan$(tput sgr 0)"

# Artix
echo "$(tput setaf 2)Empezando Con Artix$(tput sgr 0)"
mkdir ./Artix
cd ./Artix
git clone --recurse-submodules https://github.com/artix-linux/packages.git
cd ../..
echo "$(tput setaf 1)Terminado Artix$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Arco$(tput sgr 0)"
git clone --recurse-submodules https://github.com/arcolinux/arcolinux-pkgbuild.git
cd ..
echo "$(tput setaf 1)Terminado Arco$(tput sgr 0)"

echo "$(tput setaf 2)Empezando Con Revenge$(tput sgr 0)"
mkdir ./Revenge
cd ./Revenge
git clone --recurse-submodules https://github.com/obrevenge/obr-packages
cd ../..
echo "$(tput setaf 1)Terminado Revenge$(tput sgr 0)"


echo "$(tput setaf 6)Completado$(tput sgr 0)"
