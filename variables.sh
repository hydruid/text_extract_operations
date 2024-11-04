#! /bin/bash

#Variables
if [ "$1" == "debit" ]; then
   sourcefile="/home/treyh/Documents/chase_debit.txt"
   destinationfile="chase_debit_scrub.txt"
else
   echo "..."
fi

if [ "$1" == "credit" ]; then
   sourcefile="/home/treyh/Documents/chase_credit.txt"
   destinationfile="chase_credit_scrub.txt"
else
   echo "..."
fi

