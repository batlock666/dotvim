set nocompatible

" filetypes
filetype plugin indent on

" highlights
highlight ChangesSignTextAdd ctermbg=10 ctermfg=15
highlight ChangesSignTextCh ctermbg=12 ctermfg=15
highlight ChangesSignTextDel ctermbg=9 ctermfg=15
highlight NonText ctermfg=7
highlight SpecialKey ctermfg=7

" options
set autoindent
set autoread
set autowrite
set background=light
set backspace=indent,eol,start
set colorcolumn=80
set complete-=i
set cursorline
set cursorlineopt=line
set encoding=utf-8
set expandtab
set fileformats=unix,dos,mac
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set list
set listchars=tab:>-,eol:$,trail:.,extends:>,precedes:<,nbsp:%
set modeline
set modelines=5
set number
set pastetoggle=<F2>
set ruler
set shiftround
set shiftwidth=4
set shortmess+=I
set showbreak=+\ " don't delete
set showcmd
set showmatch
set showmode
set smartcase
set smarttab
set softtabstop=4
set tabstop=8
set tagcase=followscs
set undolevels=1000
set wrap
set wrapscan

" autocommands
augroup plugins
    autocmd!
    autocmd BufEnter,BufLeave *.css,*.scss,*.sass,*.html :ColorHighlight!
augroup END

" plugin changes
let g:changes_fixed_sign_column = 1
let g:changes_vcs_check = 1
let g:changes_vcs_system = 'git'

" plugin ultisnips
let g:UltiSnipsListSnippets = '<c-s>'
