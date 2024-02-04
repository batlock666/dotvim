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

" function JumpToLastPosition
function JumpToLastPosition()
    if line("'\"") > 1 && line("'\"") <= line("$")
        execute "normal! g'\""
    endif
endfunction

" function RemoveTrailingBlankLines
function RemoveTrailingBlankLines()
    let l:line = line(".")
    let l:column = col(".")
    normal G
    while getline(".") =~ "^\\s*$"
        if line(".") > 1
            normal dd
        else
            normal dd
            break
        endif
    endwhile
    call cursor(l:line, l:column)
endfunction

" function RemoveTrailingWhitespace
function RemoveTrailingWhitespace()
    let l:line = line(".")
    let l:column = col(".")
    :%s/\s\+$//e
    call cursor(l:line, l:column)
endfunction

" autocommands
augroup plugins
    autocmd!
    autocmd BufEnter,BufLeave *.css,*.scss,*.sass,*.html :ColorHighlight!
augroup END

augroup functions
    autocmd!
    autocmd BufReadPost * call JumpToLastPosition()
    autocmd BufWritePre * call RemoveTrailingBlankLines()
    autocmd BufWritePre * call RemoveTrailingWhitespace()
augroup END

" plugin changes
let g:changes_fixed_sign_column = 1
let g:changes_vcs_check = 1
let g:changes_vcs_system = 'git'

" plugin ultisnips
let g:UltiSnipsListSnippets = '<c-s>'

" plugin syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = 'E>'
let g:syntastic_perl_checkers = ['perlcritic']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_style_warning_symbol = 'S>'
let g:syntastic_warning_symbol = 'W>'

" plugin notes
let g:notes_conceal_bold = 0
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_url = 0
let g:notes_directories = ['~/Documents/Notes']
let g:notes_suffix = '.md'
let g:notes_title_sync = 'rename_file'
let g:notes_unicode_enabled = 0
