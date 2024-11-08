#! /bin/bash

#Variables
source "variables.sh"
source "functions.sh"

#Functions
delete_first_line

#Add Categories
add_category_1b="CreditCard"
add_category_1=('"FPB CR CARDINTERNETWEB' '"Payment to Chase card ending in', 'Payment Thank You-Mobile')
add_category_2b="FastFood"
add_category_2=('"SONIC DRIVE IN' '"CS GRUBHUB GC' '"MCDONALDS ' '"Subway ', 'CHIPOTLE ' 'FREDDYS ' 'TEXAS ROADHOUSE #' 'TACO BELL ' 'OLIVE GARDEN ' 'BURGER KING ' 'WHATABURGER ' 'SQ SCOOTS ITALIAN ' 'PANERA BREAD #' 'TSTKITCHEN NO' 'SWITCH 7725' 'MOBETTAHS ' 'QDOBA ' 'Swig ' 'MARCOS PIZZA -' '038 BRAUMS STORE' 'JOHNNIES CHARCOAL BROI' 'TST RICE N BUNS' 'DAVES HOT CHICKEN' 'DD SANTINISNEWYORKS' 'DONUT NEST' 'JACK IN THE BOX' 'MCDONALDS ' 'RAISING CANES ')	
add_category_3b="Service"
add_category_3=('"SCHOOLCAFE ' '"MICROSOFT REDMOND WA' '"GOOGLE Spotify' '"Netflix.com ' '"PANERA SIP CLUB ' '"YMCA of Greater' '"Hulu 877' '"YMCA OF GREATER')
add_category_4b="Bill"
add_category_4=('"TOYOTA ACH RTL' '"COX COMM' '"INSTRUMENT RENTAL' '"Online Payment 2231' 'GOOGLE FI ' 'GOOGLE Google Store' 'OKLAHOMANATURALGAS' 'PROGRESSIVE INS')
add_category_5b="Misc"
add_category_5=('"AT OK CITY ZOO' '"GOODIES EDMOND OK' '"ATM WITHDRAWAL ' '"CCSALLABOUTNOW PHOTO' '"PARTY CITY ' '"SFDCIMARRONMIDDLESCH' 'AMERICAN AIR' 'PETCO ' 'PETSMART #' 'POSTAL ANNEX #')
add_category_6b="Church"
add_category_6=('"NORTHWEST BAPTIST')
add_category_7b="Medical"
add_category_7=('"KIERL ORTHODONTI' 'COMFORT DENTAL NORTH MAY' 'CVSPHARMACY ' 'Express Scripts Phrmcy')
add_category_8b="Shopping"
add_category_8=('WAL-MART #' 'SAMSCLUB #' 'CREST FOODS #' 'DOLLAR GENERAL #' 'FAMILY DOLLAR' 'WALMART PAY' 'WALMART.COM' 'WEGMANS ')
add_category_9b="Fuel"
add_category_9=('SUNOCO ' 'CASEYS #' 'E EXPRESS AT B' 'LOVES #' 'PHILLIPS 66 -')
add_category_10b="Maintenance"
add_category_10=('BROADWAY TAG AGENCY' 'SPORT CLIPS -')

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

#Print File
cat $destinationfile

#End
exit 0
