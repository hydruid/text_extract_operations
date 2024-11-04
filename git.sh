#! /bin/bash

#Variables
date="$(date)"

#Cleanup
rm -fr *.txt

#Git Stuff
git add .
git commit -m "$date"
git push
