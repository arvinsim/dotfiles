#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Emacs24
alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias spacemacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
