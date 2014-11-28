" Variables
let s:running_windows = has("win16") || has("win32") || has("win64")
let os=substitute(system('uname'), '\n', '', '')

" Basics
set nocompatible " explicitly get out of vi-compatible mode
syntax on " syntax highlighting on

" General
filetype plugin indent on " load filetype plugins/indent settings
set backspace=indent,eol,start " make backspace more flexible
set clipboard+=unnamed " share windows clipboard
set ignorecase  " ignore case when searching
set smartcase   " only apply case sensitive search if at least one of the letters in the pattern is uppercase
set wrapscan    " wrap around
set nobackup    " disable backup files    
set nowritebackup   " don't make a backup before overwriting
set noswapfile  " disable swap files

" VIM UI
set incsearch   "search as characters are entered
set laststatus=2 "always show the status line
set number	"show line numbers
set numberwidth=5   " width of number column
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " Press Space to turn off highlighting and clear any message already displayed
set hlsearch    "highlight matches
set showcmd "show command in bottom bar
set showmatch   "highlight matching [{()}]
set cursorline	"highlight current line
set splitbelow  "place vertical splits to the bottom of the current pane
set splitright  "place vertical splits to the right of the current pane
set ttyfast " improves redrawing for new computers

" Text Formatting/Layout
set tabstop=4	"number of visual spaces per TAB
set softtabstop=4	"number of spaces in tab when editing
set autoindent
set shiftwidth=4    " auto-indent amount when using cindent, >>, << and stuff like that
set expandtab	"tabs are spaces
set smarttab   "helps with backspacing because of expandtab

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"===============PLUGINS================
"Pathogen
filetype off

execute pathogen#infect()
execute pathogen#helptags()

" NERDTree
let NERDTreeChDirMode=2   " change CWD to wherever the tree root is changed
let NERDTreeHighlightCursorline=1 " Highlight the cursor
let NERDTreeMouseMode=2 " Single click to open directory, double click to open file
let NERDTreeShowHidden=1 " Show hidden files
let NERDTreeShowLineNumbers=1 " Display line numbers in tree window

" Ctrlp
let g:ctrlp_show_hidden = 1
"begin finding a root from the current working directory outside of CtrlP
" instead of from the directory of the current file (default)
let g:ctrlp_working_path_mode='rw' 

if os == 'Linux'
elseif os == 'windows32'
elseif os == 'Darwin'
    set runtimepath^=~/.vim/bundle/ctrlp.vim
endif

" vim-hardtime
let g:hardtime_default_on=1
" lets you press n times before hardtime ignores subsequent keypress
let g:hardtime_maxcount=2  

" syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers=["gjslint"]
