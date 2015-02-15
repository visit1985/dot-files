colorscheme tango               " Set our favorite colorscheme

filetype plugin indent on       " Automatically detect file types.
syntax on                       " Enable syntax highlighting
set mouse-=a                    " Disable mouse usage
set shortmess+=filmnrxoOtT      " Cut long messages (avoids 'hit enter')
                                " Better Unix / Windows compatibility
set viewoptions=folds,options,cursor,unix,slash
set formatoptions-=cro          " Disable continuation of comments to the next line
set history=100                 " Store a ton of history (default is 20)
set nospell                     " Disable spell checking
set hidden                      " Allow buffer switching without saving

set backup                      " Make backups on save

set cursorline                  " Highlight cursor line
" Set the cursor lines color
highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
" Set the line numbers color"
highlight LineNr cterm=NONE ctermbg=235 ctermfg=231

set nowrap                      " Wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent

set backspace=indent,eol,start  " Backspace for dummies
set relativenumber              " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=1                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
"set list                        " Show invisible characters
                                " Highlight problematic whitespace
"set listchars=tab:,.,trail:.,extends:#,nbsp:.
set nolist

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" Put all vim-internal work files out of the current directory
set directory=~/.vim.swap
set viewdir=~/.vim.view
set backupdir=~/.vim.backup

" Powerline plugin
set term=xterm-256color                     " Set color terminal

" Indent guides plugin
let g:indent_guides_enable_on_vim_startup=1 " Enable on startup
let g:indent_guides_start_level=2           " Start guide on second level
let g:indent_guides_guide_size=1            " Define the width of the guide

