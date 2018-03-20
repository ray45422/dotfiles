set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#begin('~/.local/share/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Yggdroot/indentLine')
  if !has('nvim')
    "call dein#add('tanitta/deoplete-d', { 'rev': 'feature-supporting-ext-package' })
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#d#std_path = '/usr/include/dlang/dmd'
let g:indentLine_color_term = 111
let g:indentLine_char = '┆'

