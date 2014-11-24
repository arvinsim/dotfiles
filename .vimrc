" Basics
set nocompatible " explicitly get out of vi-compatible mode
syntax on " syntax highlighting on

" General
filetype plugin indent on " load filetype plugins/indent settings
set backspace=indent,eol,start " make backspace a more flexible
set clipboard+=unnamed " share windows clipboard

" VIM UI
set incsearch   "search as characters are entered
set laststatus=2 "always show the status line
set number	"show line numbers
set hlsearch    "highlight matches
set showcmd "show command in bottom bar
set showmatch   "highlight matchin [{()}]

" Text Formatting/Layout
set tabstop=4	"number of visual spaces per TAB
set softtabstop=4	"number of spaces in tab when editing
set autoindent
set shiftwidth=4    " auto-indent amount when using cindent, >>, << and stuff like that
set expandtab	"tabs are spaces

set cursorline	"highlight current line


set backspace=indent,eol,start	" make backspace work like most other apps 

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

