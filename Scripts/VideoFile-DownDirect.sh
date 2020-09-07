#! /usr/bin/env bash
# -*- coding: utf-8 -*-

var=0
while [ $var -eq 0 ];
do
	youtube-dl --skip-unavailable-fragments --hls-use-mpegts -i $1
	var=$?
done