#!/bin/bash

latestTag="$(git describe --tags)" 
latestTag="$( echo "$latestTag*10" | bc)"
nextTag=`perl -e "print(($latestTag+1)/10)"`
git add .
git commit -m "adding version v$nextTag"
git tag $nextTag
git push origin main --tags



