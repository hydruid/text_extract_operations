#! /bin/bash

#Variables
source "variables.sh"

#Cleanup and Copy File
rm -fr $destinationfile
cp $sourcefile $destinationfile

#Delete Lines that start with Credit
sed -i '/CREDIT,/d' $destinationfile

#Delete First Line
delete_first_line () {
sed -i '1d' $destinationfile
}
export -f delete_first_line

#Remove double spaces
sed -i "s/  //g" $destinationfile

#Remove special Charachters
sed -i "s/*//g" $destinationfile 
sed -i "s/'//g" $destinationfile
sed -i "s|/||g" $destinationfile
