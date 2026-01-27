#! /usr/bin/env bash

outputDir="$HOME"/.scripts/""
outputFile="colors.txt" # the name of the output file
memory=10 # How many colors to remember
copy="true" # Whether or not to copy the hex code, true or false

color=$(hyprpicker)
if [ $copy = "true" ]; then
	wl-copy $color
fi

mkdir -p $outputDir
echo -e "$color" >> $outputDir$outputFile
while (( $(grep -c '#' $outputDir$outputFile) > $memory )); do
	echo "$(tail -n +2 $outputDir$outputFile)" > $outputDir$outputFile
done
