set tabstop=3
set softtabstop=4
set shiftwidth=4
set noexpandtab

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *h,*c set filetype=c
augroup END

set nocompatible              " be iMproved, required 
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <F1> :NERDTreeToggle<CR>
map <F2> :w<CR>
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i<CR>

syntax enable
set number
set t_Co=256
colorscheme termschool

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
