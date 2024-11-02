#! /bin/bash

#Variables
sourcefile="/home/treyh/Documents/chase.txt"
destinationfile="chase_scrub.txt"

#Cleanup and Copy File
rm -fr $destinationfile
cp $sourcefile $destinationfile

#Delete First Line
if [[ "$*" == *"dfl"* ]]; then
	sed -i '1d' $destinationfile
fi
