# Set terminal to 256 colors
export TERM=xterm-256color

# Set the bash prompt
source ~/.bash_profile

# Set default editor to vim
export EDITOR=vim

export PATH="/usr/local/bin:$PATH"

# Python - mkvirtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Haskell
export PATH=~/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:$PATH

# Racket
export PATH=~/racket/bin:$PATH

source ~/Projects/liquidprompt/liquidprompt
