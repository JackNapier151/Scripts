#! /usr/bin/env bash
# -*- coding: utf-8 -*-

l=256
i=0;

while [ $l -gt $i ]
do
	echo "$(tput setaf $i)Color Nº$i"
	let i=$i+1
done
