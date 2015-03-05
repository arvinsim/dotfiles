platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
fi

# Set terminal to 256 colors
export TERM=xterm-256color

# Set the PS1 prompt (with colors).
export txt_green='\[\e[01;32m\]' # foreground green
export txt_light_cyan='\[\e[0;96m\]' # foreground light cyan
export txt_purple='\[\e[0;35m\]' # foreground purple
export color_off='\[\e[0m\]'       # Text Reset

if [[ $platform == 'linux' ]]; then
    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWCOLORHINTS=1
    export PS1="${txt_light_cyan}\u ${color_off}at ${txt_light_cyan}\h ${color_off}in ${txt_green}\W ${color_off}on $(__git_ps1 "%s") ${txt_purple}$ ${color_off}"
else
    export PS1="${txt_green}\u ${color_off}at ${txt_green}\h ${color_off}in ${txt_light_cyan}\W ${txt_purple}$ ${color_off}"
fi

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
