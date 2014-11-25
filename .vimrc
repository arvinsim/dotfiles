" Basics
set nocompatible " explicitly get out of vi-compatible mode
syntax on " syntax highlighting on

" General
filetype plugin indent on " load filetype plugins/indent settings
set backspace=indent,eol,start " make backspace more flexible
set clipboard+=unnamed " share windows clipboard
set smartcase   " only apply case sensitive search if at least one of the letters in the pattern is uppercase
set nobackup    " disable backup files    
set noswapfile  " disable swap files

" VIM UI
set incsearch   "search as characters are entered
set laststatus=2 "always show the status line
set number	"show line numbers
set hlsearch    "highlight matches
set showcmd "show command in bottom bar
set showmatch   "highlight matching [{()}]
set cursorline	"highlight current line
set splitbelow  "place vertical splits to the bottom of the current pane
set splitright  "place vertical splits to the right of the current pane

" Text Formatting/Layout
set tabstop=4	"number of visual spaces per TAB
set softtabstop=4	"number of spaces in tab when editing
set autoindent
set shiftwidth=4    " auto-indent amount when using cindent, >>, << and stuff like that
set expandtab	"tabs are spaces

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"===============PLUGINS================
"Pathogen
filetype off

execute pathogen#infect()
execute pathogen#helptags()

" NERDTree
let NERDTreeShowHidden=1 " Show hidden files
let NERDTreeHighlightCursorline=1 " Highlight the cursor

