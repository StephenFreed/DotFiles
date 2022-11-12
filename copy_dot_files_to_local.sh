#!/bin/bash

# check before overwriting files
read -p "Overwrite Files? <y/n> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    # copies files from git directory dotfiles/ locally
    cp ~/dotfiles/.sf_profile ~/.sf_profile
    cp ~/dotfiles/.commands.cfg ~/.commands.cfg
    cp ~/dotfiles/.vimrc ~/.vimrc

    # heredoc to source .sf_profile at login
    bash_profile_grep=$(grep -s "~/.sf_profile" ~/.bash_profile)
    if [[ -z $bash_profile_grep ]]
    then
cat << EOF >> ~/.bash_profile
if [[ -f ~/.sf_profile ]]
then
    . ~/.sf_profile
fi
EOF
    fi

    bash_grep=$(grep -s "~/.sf_profile" ~/.bashrc)
    if [[ -z $bash_grep ]]
    then
cat << EOF >> ~/.bashrc
if [[ -f ~/.sf_profile ]]
then
    . ~/.sf_profile
fi
EOF
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
    . ~/sf_profile
    . ~/.bash_profile
    . ~/.bashrc
    . ~/.zshrc
    fi

else
    exit 0
fi



