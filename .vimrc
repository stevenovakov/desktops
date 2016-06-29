" .vimrc

syntax enable
"let g:molokai_original = 1
colorscheme molokai

" Tabs and Spaces
set tabstop=2 " # of visual spaces per tab
set softtabstop=2 " # spaces inserted when tab is pressed
set shiftwidth=2 " # spaces for tab conversion
set expandtab " turns tabs into spaces
autocmd BufWritePre * %s/\s\+$//e " remove trailing space

" UI
set number
set showcmd
set cursorline
filetype indent on
set lazyredraw
set wildmenu
set showmatch " matching parentheses highlight
set colorcolumn=80
