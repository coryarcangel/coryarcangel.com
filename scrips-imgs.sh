#!/usr/bin/env bash

for file in assets/imgs/*.jpg;
do filename="${file%.*}"; 
convert $file -quality 60 -resize x300 $filename-thumb.jpg; 
mv $filename-thumb.jpg assets/thumbs/
done; 