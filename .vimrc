" converts 1 tab to 4 spaces
set et
set sw=4
set smarttab

" <shift>+TAB for hard tabs
imap <silent> <S-tab> <C-v><tab>
" tabview toggle <CTRL>+T
:nmap <C-T> :set list! <CR>

" enable linenumbers at startup
:set number
" linenumbers toggle <CTRL>+N
:nmap <C-N> :set invnumber <CR>

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" show matching bracket
set showmatch

syntax on

" colorschemes
" colorscheme default
colorscheme smyck
" colorscheme habiDark
"colorscheme habiLight
"colorscheme desert
"colorscheme eclipse
"colorscheme automation
"colorscheme nuvola

"set foldmethod=marker
set foldmethod=manual
