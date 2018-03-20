"文字コードをUTF-8に
set fenc=utf-8
set t_Co=256
set laststatus=2
set noswapfile
syntax on
set re=1

set background=dark

"半透明
highlight Normal ctermbg=none
set ruler 
set number         " 行番号を表示する
set cursorline     " カーソル行に線を引く
set cursorcolumn   " カーソル位置のカラムの背景色を変える
" インサートモードに入った時にカーソル行(列)の色を変更する
augroup vimrc_change_cursorline_color
    autocmd!
    autocmd InsertEnter * hi CursorLineNr ctermbg = 118
    autocmd InsertLeave * hi CursorLineNr ctermbg = 236
augroup END

set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set sidescrolloff=16           " 左右スクロール時の視界を確保
set scrolloff=8                " 上下8行の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

set title "タイトルをウィンドウ枠に表示

" オートインデントを有効にする（新しい行のインデントを現在の行と同じにする）
set autoindent
set tabstop=4 "タブ幅
set shiftwidth=4
set softtabstop=4

"タブラインを引く
set list lcs=tab:\┆\ 

set autoread   "外部でファイルに変更がされた場合は読みなおす

let &t_ti .= "\e[?1004h"
let &t_te .= "\e[?1004l"

set showcmd " 入力中のコマンドをステータスに表示する

if &compatible
  set nocompatible
endif

source ~/.config/nvim/plugin.vim
