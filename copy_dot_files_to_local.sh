#!/bin/bash

# check before overwriting files
read -p "Overwrite Files? <y/n> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    # copies files from git directory .dot-files/ locally
    cp ~/dot_files/.sf_profile ~/.sf_profile
    cp ~/dot_files/.commands.cfg ~/.commands.cfg
    cp ~/dot_files/.vimrc ~/.vimrc

    # heredoc to source .sf_profile
    bash_grep=$(grep -s "~/.sf_profile" ~/.bashrc)
    if [[ -z $bash_grep ]]
    then
cat << EOF >> ~/.bashrc
if [[ -f ~/.sf_profile ]]
then
    . ~/.sf_profile
fi
EOF
    . ~/.bashrc
    fi

    zsh_grep=$(grep -s "~/.sf_profile" ~/.zshrc)
    if [[ -z $zsh_grep ]]
    then
cat << EOF >> ~/.zshrc
if [[ -f ~/.sf_profile ]]
then
    . ~/.sf_profile
fi
EOF
    . ~/.zshrc
    fi

else
    exit 0
fi



