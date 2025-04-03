" === BASIC VIM SETUP FOR PYTHON ===

" Enable line numbers
set number

" Highlight current line
set cursorline

" Enable syntax highlighting
syntax on

" Set indentation for Python
set tabstop=4        " Number of visual spaces per TAB
set shiftwidth=4     " Number of spaces to use for each indentation
set expandtab        " Use spaces instead of tabs
set autoindent       " Copy indent from current line when starting a new line
filetype indent on   " Enable file-type specific indenting

" Highlight matching parentheses
set showmatch

" Set encoding
set encoding=utf-8

" Show line and column number in the status line
set ruler

" Enable mouse (optional but helpful)
set mouse=a

" Show invisible characters like tabs (optional)
set list listchars=tab:»·,trail:·

" Enable line wrapping
set wrap

" Set a nice color scheme (default one that supports syntax)
colorscheme desert  " You can change this to 'elflord', 'murphy', etc.

" === Plugin Setup with vim-plug ===
call plug#begin('~/.vim/plugged')

" Python syntax highlighting
Plug 'vim-python/python-syntax'

" Autocompletion (IntelliSense-like)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Linting
Plug 'dense-analysis/ale'

" Cool Theme
Plug 'morhetz/gruvbox'

call plug#end()
" === Theme Settings ===
set background=dark      " Set to 'light' if you want the light version
colorscheme gruvbox      " Activate the theme

" === Basic Settings (keep your earlier settings here too) ===
syntax on
set number
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype indent on
set encoding=utf-8
set ruler
set mouse=a
set background=dark
colorscheme gruvbox

" Use flake8 and mypy
let g:ale_linters = {
\   'python': ['flake8', 'mypy'],
\}

" Show linting results in the status line
let g:ale_echo_msg_format = '[%linter%] %s'

" Use tab for navigating suggestions
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

