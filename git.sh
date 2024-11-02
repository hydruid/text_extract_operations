#! /bin/bash

#Variables
date="$(date)"

git add .
git commit -m "$date"
git push
