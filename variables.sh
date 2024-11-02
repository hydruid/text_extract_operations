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

#Categories
##Remove double spaces
sed -i "s/  //g" $destinationfile

##Bills
bills=('"FPB CR CARDINTERNETWEB' 'banana')
fastfoods=('"SONIC DRIVE IN' 'banana')
if [[ "$*" == *"cat"* ]]; then
        for bill in "${bills[@]}"; do
        sed -i "s/$bill/Bill,$bill/g" $destinationfile
        done
        for fastfood in "${fastfoods[@]}"; do
        sed -i "s/$fastfood/FastFood,$fastfood/g" $destinationfile
        done

fi
