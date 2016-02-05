#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export PATH=~/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=/Users/arvinsim/.cabal/bin:$PATH
export PATH=/Applications/GHC.app/Contents/bin:$PATH
export PATH=/Users/arvinsim/anaconda/bin:$PATH
