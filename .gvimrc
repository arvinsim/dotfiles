" Startup
let s:running_windows = has("win16") || has("win32") || has("win64")
" ===============Themes========================= 

" BusyBee
" colorscheme BusyBee

" Solarized(Dark)
syntax enable
set background=dark
colorscheme solarized

if s:running_windows
    set guifont=Consolas:h11
else
    set guifont=Monaco:h12
endif



