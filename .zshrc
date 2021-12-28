

# ---------------------------------------------------------------------------

# terminal colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# working directory in title bar
precmd () {print -Pn "\e]0;%~\a\w"}

# starship adds the init script to your shell's config file
eval "$(starship init zsh)"

# export PATH="/usr/local/bin:$PATH"
# ---------------------------------------------------------------------------
