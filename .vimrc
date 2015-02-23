" Variables
let os=substitute(system('uname'), '\n', '', '')

" Basics
set nocompatible " explicitly get out of vi-compatible mode
syntax on " syntax highlighting on


" General
filetype plugin indent on " load filetype plugins/indent settings
set backspace=indent,eol,start " make backspace more flexible
if os == 'Linux'
    set clipboard=unnamedplus,autoselect " share windows clipboard
elseif os == 'Darwin'
    set clipboard=unnamed,autoselect " share windows clipboard
endif
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

" Set encoding to UTF 8
scriptencoding utf-8
set encoding=utf-8

"===============AUTOCMD================
autocmd Filetype ace setlocal expandtab shiftwidth=2 softtabstop=2

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
let g:NERDTreeDirArrows=1 " Use arrows for directory
nmap <F2> :NERDTreeToggle<cr>
"
" Ctrlp
let g:ctrlp_show_hidden = 1
"begin finding a root from the current working directory outside of CtrlP
" instead of from the directory of the current file (default)
let g:ctrlp_working_path_mode='rw' 

if os == 'Linux'
    set runtimepath^=~/.vim/bundle/ctrlp.vim
elseif os == 'windows32'
elseif os == 'Darwin'
    set runtimepath^=~/.vim/bundle/ctrlp.vim
endif

" vim-hardtime
let g:hardtime_default_on=1
" lets you press n times before hardtime ignores subsequent keypress
let g:hardtime_maxcount=2  

" syntastic
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:syntastic_mode_map={ 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': ['py', 'js'] }
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_warning_symbol='WW'
let g:syntastic_error_symbol='EE'
let g:syntastic_style_warning_symbol='SW'
let g:syntastic_style_error_symbol='SE'
let g:syntastic_ignore_files = ['\.py$']

" vim-javascript
let javascript_enable_domhtmlcss=1

" pymode
let g:pymode=1
let g:pymode_virtualenv=1
let g:pymode_lint=1
let g:pymode_lint_on_write=1
let g:pymode_lint_message=1
let g:pymode_lint_checkers=['pep8']
let g:pymode_lint_cwindow=1
let g:pymode_lint_signs=1
let g:pymode_breakpoint=1
let g:pymode_breakpoint_bind='<leader>b'
let g:pymode_breakpoint_cmd='import pudb; pudb.set_trace()'
let g:pymode_rope=1
let g:pymode_syntax=1
let g:pymode_syntax_all=1

" tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags' " Proper Ctags locations
nmap <F8> :TagbarToggle<CR>                  

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css " EmmetInstall

"=================THEME================
" Solarized(Dark)
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
