#!/usr/bin/env bash
SUM=$(sha1sum resourcepack.zip | awk '{ print $1 }')
cp resourcepack.zip "$SUM.zip"
git add .
git commit -m "Updated resource-pack."
git push origin master
echo "Set the resource pack path to: https\\://github.com/tyrerexus/ResourcePack/raw/master/$SUM.zip"
