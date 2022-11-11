#!/bin/bash

DATE=$(date +"%D-%T-%Z")

# copies files to .dot-files_repo/ git directory
cp ~/.sf_profile ~/.dot_files_repo/
cp ~/.commands.cfg ~/.dot_files_repo/
cp ~/.vimrc ~/.dot_files_repo/

STATUS=$(git status -s 2> /dev/null)
CHANGES=$(($(echo $STATUS | grep " M" | wc -l | xargs) + $(echo $STATUS | grep " R" | wc -l | xargs) + $(echo $STATUS | grep " D" | wc -l | xargs) + $(echo $STATUS | grep "?? " | wc -l | xargs)))
CHANGES=1

if [[ $CHANGES > 0 ]]
then
    git add .
    git commit -m "$(date): Auto Git Push From Laptop"
    git push
    echo "$DATE PUSHED CHANGES" >> ./script_log_file.txt
else
    echo "$DATE NO CHANGES" >> ./script_log_file.txt
fi

