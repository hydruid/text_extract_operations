export -f #! /bin/bash

#Variables
sourcefile="/home/treyh/Documents/chase.txt"
destinationfile="chase_scrub.txt"

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

#Categories (add category based on matching text)
add_category () {
ccs=('"FPB CR CARDINTERNETWEB' '"Payment to Chase card ending in')
fastfoods=('"SONIC DRIVE IN' '"CS GRUBHUB GC' '"MCDONALDS ' '"Subway ')
services=('"SCHOOLCAFE ' '"MICROSOFT REDMOND WA' '"GOOGLE Spotify' '"Netflix.com ' '"PANERA SIP CLUB ')
bills=('"TOYOTA ACH RTL')

for cc in "${ccs[@]}"; do
sed -i "s/$cc/CreditCard,$cc/g" $destinationfile
done
for fastfood in "${fastfoods[@]}"; do
sed -i "s/$fastfood/FastFood,$fastfood/g" $destinationfile
done
for service in "${services[@]}"; do
sed -i "s/$service/Service,$service/g" $destinationfile
done
for bill in "${bills[@]}"; do
sed -i "s/$bill/Bill,$bill/g" $destinationfile
done
}
export -f add_category
