set tabstop=3
set softtabstop=4
set shiftwidth=4
set noexpandtab

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *h,*c set filetype=c
augroup END

set textwidth=120

syntax on
set number
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */

set t_Co=256
colorscheme termschool

map <F7> :make<CR>
map <S-F7> :make clean all<CR>
map <F12> <C-]>

nnoremap <F1> :NERDTreeToggle<CR>
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

if &diff
  ” diff settings
  map <M-Down> ]c
  map <M-Up> [c
  map <M-Left> do
  map <M-Right> dp
  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
  " spell settings
  :setlocal spell spelllang=en
  " set the spellfile - folders must exist
  set spellfile=~/.vim/spellfile.add
  map <M-Down> ]s
  map <M-Up> [s
endif

set nocompatible              " be iMproved, required 
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let &path.="/usr/include,"

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"
" Clang Complete Setup
let g:clang_use_library=1
let g:clang_library_path='/usr/lib/'
let g:clang_complete_auto=1
let g:clang_hl_errors=1
set conceallevel=2
set concealcursor=inv
let g:clang_snippets=1
let g:clang_conceal_snippets=1 
let g:clang_snippets_engine='clang_complete'
set completeopt=menu,menuone
set pumheight=20
let g:clang_user_options='-std=c89'
let g:clang_complete_macros=1
