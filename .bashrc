# bashrc

# For Git Branch In Terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Colors = black 0, red 1, green 2, yellow 3, blue 4, magenta 5, cyan 6, white 7
export PS1="\[$(tput setaf 7)\] ➤ \[$(tput setaf 6)\]\W\[$(tput setaf 7)\] ➤\[$(tput setaf 1)\]\$(parse_git_branch) \[$(tput setaf 7)\]"
# export PS1="\u@\h \[$(tput setaf 7)\] ➤ \[$(tput setaf 6)\]\W\[$(tput setaf 7)\] ➤\[$(tput setaf 1)\]\$(parse_git_branch) \[$(tput setaf 7)\]"
# export JDTLS_HOME=/path/to/jdtls_root
