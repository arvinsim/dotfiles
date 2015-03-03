# Set terminal to 256 colors
export TERM=xterm-256color

# Set the PS1 prompt (with colors).
export txt_green='\[\e[01;32m\]' # foreground green
export txt_light_cyan='\[\e[0;96m\]' # foreground light cyan
export txt_purple='\[\e[0;35m\]' # foreground purple
export color_off='\[\e[0m\]'       # Text Reset
export PS1="${txt_green}\u ${color_off}at ${txt_green}\h ${color_off}in ${txt_light_cyan}\W ${txt_purple}$ ${color_off}"

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
