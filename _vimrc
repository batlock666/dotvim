set nocompatible

" pathogen
let g:pathogen_disabled = []
call pathogen#infect()
call pathogen#helptags()

" filetypes
filetype plugin indent on

" extensions
autocmd BufNewFile,BufReadPost *.json set filetype=javascript
autocmd BufNewFile,BufReadPost *.pt set filetype=xml
autocmd BufNewFile,BufReadPost *.zcml set filetype=xml
autocmd BufNewFile,BufReadPost *.t set filetype=perl

" highlights
highlight ColorColumn term=reverse cterm=none ctermbg=7 guibg=LightGrey
highlight CursorLine term=none cterm=none
highlight CursorLineNR term=none cterm=none ctermbg=7 guibg=LightGrey
highlight NonText term=bold ctermfg=7 guifg=LightGrey
highlight SpecialKey term=bold ctermfg=7 guifg=LightGrey

" local
augroup local
    autocmd!
    autocmd FileType htmldjango setlocal shiftwidth=2 softtabstop=2
    autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
    autocmd FileType xml setlocal shiftwidth=2 softtabstop=2
augroup END

" syntax
syntax enable

" options
set autoindent
set autoread
set autowrite
set background=light
set backspace=indent,eol,start
set complete-=i
set cursorline
set encoding=utf-8
set expandtab
set fileformats=unix,dos,mac
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
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
set undolevels=1000
set wrap
set wrapscan

" function RemoveTrailingWhitespace
function RemoveTrailingWhitespace()
    let l:line = line(".")
    let l:column = col(".")
    :%s/\s\+$//e
    call cursor(l:line, l:column)
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()

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
autocmd BufWritePre * call RemoveTrailingBlankLines()

" function JumpToLastPosition
function JumpToLastPosition()
    if line("'\"") > 1 && line("'\"") <= line("$")
        execute "normal! g'\""
    endif
endfunction
autocmd BufReadPost * call JumpToLastPosition()

" function MakeScriptExecutable
function MakeScriptExecutable()
    if getline(1) =~ "^#!"
        if getline(1) =~ "/bin/"
            silent !chmod a+x <afile>
        endif
    endif
endfunction
autocmd BufWritePost * call MakeScriptExecutable()

" syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = 'E>'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_perl_checkers = []
let g:syntastic_enable_perl_checker = 0
let g:syntastic_style_warning_symbol = 'S>'
let g:syntastic_warning_symbol = 'W>'

" indentline
let g:indentLine_color_gui = '#BFBFBF'
let g:indentLine_color_term = 7

" notes
let g:notes_directories = ['~/Documents/Notes']
let g:notes_suffix = '.txt'
let g:notes_title_sync = 'rename_file'
let g:notes_unicode_enabled = 0
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_bold = 0
let g:notes_conceal_url = 0

" line width
call matchadd('ColorColumn', '\%81v', 100)  " soft limit
call matchadd('ColorColumn', '\%121v', 100)  " hard limit
