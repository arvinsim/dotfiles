# Set terminal to 256 colors
export TERM=xterm-256color

# Set the bash prompt
source ~/.bash_profile

# Set the bash aliases
source ~/.bash_aliases

# Configure npm to use the new directory path
npm config set prefix '~/.npm-global' 

# Set default editor to vim
export EDITOR=vim

export PATH="/usr/local/bin:$PATH"
export PATH="~/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"

# Python - mkvirtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
