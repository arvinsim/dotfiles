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
export PATH=/Users/arvinsim/bin/elixir/bin:$PATH
export PATH=/Users/arvinsim/bin/brew/bin:$PATH
export PATH=/Users/arvinsim/Library/Android/sdk/tools:$PATH
export PATH=/Users/arvinsim/Library/Android/sdk/platform-tools:$PATH

# Emacs24 (Override vanilla Emacs because I don't want to use it!)
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias spacemacs="/Applications/Emacs.app/Contents/MacOS/Emacs"

# Set editor to Vim
export EDITOR=vim
export VISUAL=vim

export ANDROID_HOME=~/Library/Android/sdk 
