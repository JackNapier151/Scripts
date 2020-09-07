#! /usr/bin/env bash
# -*- coding: utf-8 -*-

IFS=$'\n';
for i in `find ./*.* -maxdepth 1 -type f -size +2000M`;do
	echo $i;
	zip -0 -s 2000M ${i:0:-4}.zip $i ;
done;
exit 0
