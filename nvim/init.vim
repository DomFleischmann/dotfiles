call plug#begin("~/.config/nvim/plugins")
  " Theme
  Plug 'morhetz/gruvbox'
  Plug 'w0rp/ale'
call plug#end()
let ayucolor="light"
:runtime! filetype.vim
:runtime! ftplugin.vim
:runtime! indent.vim
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme gruvbox
set background=dark
