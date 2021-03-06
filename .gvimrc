" Startup
let os=substitute(system('uname'), '\n', '', '')

" ===============Themes========================= 

" BusyBee
" colorscheme BusyBee

" Solarized(Dark)
syntax enable
set background=dark
colorscheme solarized

" Encoding
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set antialias

if os == 'Linux'
    "set guifont=Monospace\ 9
    "set guifont=Ubuntu\ Mono\ 12
    "set guifont=Inconsolata-g\ for\ Powerline\ 11
    "set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
    set guifont=Fantasque\ Sans\ Mono\ 12 "https://github.com/belluzj/fantasque-sans
    
    "===========MAPS===================
    " Launch new gvim window instance
    nnoremap <C-n> :silent execute '! gvim'<CR>
elseif os == 'windows32'
    set guifont=Consolas:h11:cDEFAULT

    "===========MAPS===================
    " Launch new gvim window instance
    nnoremap <C-n> :silent execute '!start gvim'<CR>
elseif os == 'Darwin'
    set guifont=Monaco:h12
    "set guifont=Inconsolata-g\ for\ Powerline:h20
   
    "===========MAPS===================
    " Just use Command + N to launch new MVIM window
endif
