#! /bin/bash

#Variables
sourcefile="/home/treyh/Documents/chase_debit.txt"
destinationfile="chase_debit_scrub.txt"

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

add_category_1b="CreditCard"
add_category_1=('"FPB CR CARDINTERNETWEB' '"Payment to Chase card ending in')
add_category_2b="FastFood"
add_category_2=('"SONIC DRIVE IN' '"CS GRUBHUB GC' '"MCDONALDS ' '"Subway ')
add_category_3b="Service"
add_category_3=('"SCHOOLCAFE ' '"MICROSOFT REDMOND WA' '"GOOGLE Spotify' '"Netflix.com ' '"PANERA SIP CLUB ' '"YMCA of Greater' '"Hulu 877' '"YMCA OF GREATER')
add_category_4b="Bill"
add_category_4=('"TOYOTA ACH RTL' '"COX COMM' '"INSTRUMENT RENTAL' '"Online Payment 2231')
add_category_5b="Misc"
add_category_5=('"AT OK CITY ZOO' '"GOODIES EDMOND OK' '"ATM WITHDRAWAL ' '"CCSALLABOUTNOW PHOTO' '"PARTY CITY ' '"SFDCIMARRONMIDDLESCH')
add_category_6b="Church"
add_category_6=('"NORTHWEST BAPTIST')
add_category_7b="Medical"
add_category_7=('"KIERL ORTHODONTI')
add_category_8b=""
add_category_8=('asdfasdf')
add_category_9b=""
add_category_9=('asdfasdf')
add_category_10b=""
add_category_10=('asdfasdf')

for add_category_1a in "${add_category_1[@]}"; do
sed -i "s/$add_category_1a/$add_category_1b,$add_category_1a/g" $destinationfile
done
for add_category_2a in "${add_category_2[@]}"; do
sed -i "s/$add_category_2a/$add_category_2b,$add_category_2a/g" $destinationfile
done
for add_category_3a in "${add_category_3[@]}"; do
sed -i "s/$add_category_3a/$add_category_3b,$add_category_3a/g" $destinationfile
done
for add_category_4a in "${add_category_4[@]}"; do
sed -i "s/$add_category_4a/$add_category_4b,$add_category_4a/g" $destinationfile
done
for add_category_5a in "${add_category_5[@]}"; do
sed -i "s/$add_category_5a/$add_category_5b,$add_category_5a/g" $destinationfile
done
for add_category_6a in "${add_category_6[@]}"; do
sed -i "s/$add_category_6a/$add_category_6b,$add_category_6a/g" $destinationfile
done
for add_category_7a in "${add_category_7[@]}"; do
sed -i "s/$add_category_7a/$add_category_7b,$add_category_7a/g" $destinationfile
done
for add_category_8a in "${add_category_8[@]}"; do
sed -i "s/$add_category_8a/$add_category_8b,$add_category_8a/g" $destinationfile
done
for add_category_9a in "${add_category_9[@]}"; do
sed -i "s/$add_category_9a/$add_category_9b,$add_category_9a/g" $destinationfile
done
for add_category_10a in "${add_category_10[@]}"; do
sed -i "s/$add_category_10a/$add_category_10b,$add_category_10a/g" $destinationfile
done

}
export -f add_category
