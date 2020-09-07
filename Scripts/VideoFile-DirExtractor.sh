#! /usr/bin/env bash
# -*- coding: utf-8 -*-

IFS=$'\n';
for i in `find ./*/*.{mkv,avi,mp4} -maxdepth 2 -type f -size +15k`;do
	echo $i;
	mv $i ./ ;
done;