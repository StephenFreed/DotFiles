# Dot Files

### .sf_profile 
---
- works in bash or zsh
- set terminal colors
- ssh info when remote
- git status and branch
- activate python virtual environment when entering directory

### .vimrc 
---
- basic .vimrc to add on remote servers with my remaps
- everything is native vim in this rc 
- makes sustained work on remote servers a lot more productive

### .commands.cfg 
---
- cheat sheet of commands and info that can be searched quickly from within vim

### bash scripts
---
- bash script that will copy dot files from cloned git repository to local
- greps local .bash_profile, .bashrc, .zshrc and adds sourcing of .sf_profile if not there
- bash script triggered by cron job that will push from my main laptop to this repository if any changes are made
