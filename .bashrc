# Set the PS1 prompt (with colors).
export txt_green='\e[01;32m' # foreground green
export txt_light_cyan='\e[0;96m' # foreground light cyan
export txt_purple='\e[0;35m' # foreground purple
export color_off='\e[0m'       # Text Reset
export PS1="${txt_green}\u@\h ${txt_light_cyan}\W ${txt_purple}$ ${color_off}"

# Set default editor to vim
export EDITOR=vim
