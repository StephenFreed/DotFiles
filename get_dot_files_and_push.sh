#!/bin/bash

DATE=$(date +"%D-%T-%Z")

# copies files to .files/ git directory
cp ~/.sf_profile ~/.files/
cp ~/.commands.cfg ~/.files/
cp ~/.vimrc ~/.files/

STATUS=$(git status -s 2> /dev/null)
CHANGES=$(($(echo $STATUS | grep " M" | wc -l | xargs) + $(echo $STATUS | grep "M " | wc -l | xargs) + $(echo $STATUS | grep " R" | wc -l | xargs) + $(echo $STATUS | grep "R " | wc -l | xargs) + $(echo $STATUS | grep " D" | wc -l | xargs) + $(echo $STATUS | grep "D " | wc -l | xargs) + $(echo $STATUS | grep "?? " | wc -l | xargs)))
STATE=$(git status 2> /dev/null)
IS_AHEAD=$(echo -n "$STATE" | grep -i "ahead")

if [[ $CHANGES > 0 ]] || [[ ! -z "$IS_AHEAD" ]]
then
    git add -A
    git commit -m "$(date): Auto Git Push From Laptop"
    git push
    echo "$DATE PUSHED CHANGES" >> ./log_file.txt
else
    echo "$DATE NO CHANGES" >> ./log_file.txt
fi

