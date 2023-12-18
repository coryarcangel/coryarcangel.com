#!/bin/bash

file_path="_data/images.csv"
counter=0

# Check if the file exists
if [ -e "$file_path" ]; then
	while IFS= read -r line; do
		if [ $counter = 0 ]; then
			((counter++))
			echo $line
			printf "%s\n" $line > images-temp.csv
		else
			filename=$(awk -F"[,]" '{printf("%s", $1);}' <<< "$line")
			stripped_filename=$(echo "$filename" | sed 's/"//g' | sed 's/\..*$//')
			convert assets/imgs/$stripped_filename.jpg -quality 80 -resize x300 $stripped_filename-thumb.jpg; 
			mv $stripped_filename-thumb.jpg assets/thumbs/		
			inventory=$(awk -F"[,]" '{printf("%s", $2);}' <<< "$line")
			show=$(awk -F"[,]" '{printf("%s", $3);}' <<< "$line")
			year=$(awk -F"[,]" '{printf("%s", $4);}' <<< "$line")
			w=$(identify -format '%w' assets/thumbs/$stripped_filename-thumb.jpg)
			h=$(identify -format '%h' assets/thumbs/$stripped_filename-thumb.jpg)
			x=$(awk -F"[,]" '{printf("%s", $7);}' <<< "$line")
			echo $filename,$inventory,$show,$year,$w,$h,$x
			printf "%s%s%s%s%s%s%s\n" "$filename,$inventory,$show,$year,$h,$w,$x" >> images-temp.csv
			((counter++))
		fi
	done < "$file_path"

else
    echo "File not found: $file_path"
fi

mv images-temp.csv _data/images.csv
