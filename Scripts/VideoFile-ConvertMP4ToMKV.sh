#! /usr/bin/env bash
# -*- coding: utf-8 -*-

IFS=$'\n';
for i in `find ./*.mp4 -maxdepth 1 -type f`;do
	echo $i;
	ffmpeg -i $i -codec copy ${i:0:-4}.mkv ;
done;
exit 0