#!/bin/bash
mkdir -p image-blur
for inname in ./backgrounds/*
do
	inname=${inname##*/}
    echo "  ${inname}"
	md5name=`echo -n /usr/share/backgrounds/$inname | md5sum`
	md5name=${md5name%  *}
	outname=$md5name.jpg
	/usr/lib/deepin-api/image-blur --sigma 30 ./backgrounds/$inname ./image-blur/$outname
done
