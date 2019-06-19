#!/usr/bin/env bash
SUM=$(sha1sum resourcepack.zip | awk '{ print $1 }')
cp resourcepack.zip "$SUM.zip"
echo "Set the resource pack path to: https\\://www.domain.com/$SUM.zip"
git add .
git commit -m "Updated resource-pack."
git push origin master
