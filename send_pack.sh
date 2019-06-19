#!/usr/bin/env bash
SUM=$(sha1sum resourcepack.zip | awk '{ print $1 }')
git add .
git commit -m "Updated resource-pack."
git push origin master
echo "Set the resource-pack-sha1 to: $SUM"
