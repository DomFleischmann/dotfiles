syntax on
call plug#begin('~/.vim/plugged')
"Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'msanders/snipmate.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
syntax enable
set term=screen-256color
set tabstop=4 "uses 4 spaces when reading tab
set softtabstop=4 "uses 4 spaces when using tab in edit
set expandtab "uses spaces when tab
set number "line numbers
set cursorline "shows line where cursor is 
filetype indent on "load filetupe-specific indent files
set wildmenu "visual autocoplete for command menu
set lazyredraw "redraw only when need to.
set showmatch "highlight matching [{()}]
set incsearch "search as characters are entered
set hlsearch "highlight matches
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
"for airline
let g:airline_powerline_fonts=1
:let g:airline_theme='bubblegum'
set laststatus=2
"Auto closing
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
"other way to enter normal mode
inoremap jj <ESC>
:color darkblue
