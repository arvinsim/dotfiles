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

if os == 'Linux'
    "set guifont=Monospace\ 9
    set guifont=Ubuntu\ Mono\ 12
elseif os == 'windows32'
    set guifont=Consolas:h11:cDEFAULT
elseif os == 'Darwin'
    set guifont=Monaco:h10
endif
