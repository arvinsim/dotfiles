# Set terminal to 256 colors
export TERM=xterm-256color

# Set the PS1 prompt (with colors).
export txt_green='\[\e[01;32m\]' # foreground green
export txt_light_cyan='\[\e[0;96m\]' # foreground light cyan
export txt_blue='\[\e[0;34m\]' # foreground blue
export txt_purple='\[\e[0;35m\]' # foreground purple
export color_off='\[\e[0m\]'       # Text Reset


platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='MacOSX'
fi

if [[ $platform == 'linux' ]]; then
    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWCOLORHINTS=1
    export PS1="${txt_light_cyan}\u ${color_off}at ${txt_light_cyan}\h ${color_off}in ${txt_green}\W ${color_off}on $(__git_ps1 \"%s\") ${txt_purple}$ ${color_off}"
elif [[ $platform == 'MacOSX' ]]; then
    export PS1="${txt_light_cyan}\u ${color_off}at ${txt_light_cyan}\h ${color_off}in ${txt_green}\W ${color_off}on $(__git_ps1 \"%s\") ${txt_purple}$ ${color_off}"
fi

# added by Anaconda2 2.4.1 installer
export PATH="/Users/arvinsim/anaconda/bin:$PATH"

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/GHC.app"
export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
