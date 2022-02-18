# Environment Variables
# ---------------------------------------------------------------------------

export TEST_USER="USER TEST WORKED From .zshenv"

# ---------------------------------------------------------------------------


# PATH & Aliases
# ---------------------------------------------------------------------------

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
# PATH For Starship Config
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# PATH For Java 17
export JAVA_HOME=$(/usr/libexec/java_home)
# Path For Maven

# Run Python Virtual Env In Vim
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# Aliases
alias python="python3"
alias vim="nvim"
# alias tree="tree -L 2"
# ---------------------------------------------------------------------------

