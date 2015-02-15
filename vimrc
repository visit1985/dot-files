colorscheme tango               " Set our favorite colorscheme
syntax on                       " Enable syntax highlighting
set mouse-=a                    " Disable mouse usage
set shortmess+=filmnrxoOtT      " Cut long messages (avoids 'hit enter')
                                " Better Unix / Windows compatibility
set viewoptions=folds,options,cursor,unix,slash
set formatoptions-=cro          " Disable continuation of comments to the next line
set history=100                 " Store a ton of history (default is 20)
set nospell                     " Disable spell checking
set hidden                      " Allow buffer switching without saving
set cursorline                  " Highlight cursor line
                                " Set the cursor lines color
highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
                                " Set the line numbers color"
highlight LineNr cterm=NONE ctermbg=235 ctermfg=231
set nowrap                      " Wrap long lines
set noautoindent                " Don't indent at the same level of the previous line
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
set whichwrap=b,s,h,l,<,>,[,]   " Wrap line on backspace and cursor keys too
set scrolljump=1                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set nolist                      " Hide invisible characters

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

" Line number toggle function
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set rnu
  endif
endfunc

" Syntax highlighting toggle function
function! SyntaxToggle()
  if exists("g:syntax_on")
    syntax off
  else
    syntax on
    highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
    highlight LineNr cterm=NONE ctermbg=235 ctermfg=231
  endif
endfunc

" Keyboard mappings
"   Map redo to Shift+u (as undo is u)
map <S-u> <C-r>
"   Show file browser
map <C-o> :NERDTreeToggle<CR>
"   Show fuzzy search
map <C-p> :CtrlP<CR>
"   Open new empty window
map <C-t> :vnew<CR>
"   Split current buffer in new window
map <C-c> :vsplit<CR>
"   Close current window
map <C-x> :hide<CR>
"   Switch to next window
map <C-j> <C-w><C-w>
map <C-k> <C-w><C-w>
"   Show available buffers
map <C-l> :ls<CR>
"   Toggle syntax highlighting
map <C-h> :call SyntaxToggle()<cr>
"   Toggle line numbers
map <C-n> :call NumberToggle()<cr>

