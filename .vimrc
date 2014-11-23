set tabstop=4	"number of visual spaces per TAB
set softtabstop=4	"number of spaces in tab when editing
set expandtab	"tabs are spaces
set number	"show line numbers
set cursorline	"highlight current line
set showmatch   "highlight matchin [{()}]
set incsearch   "search as characters are entered
set hlsearch    "highlight matches
set backspace=2	" make backspace work like most other apps 

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"===============PLUGINS================
"Pathogen
filetype off

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

" Airline
set laststatus=2
