" set default indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

syntax on
set number
set showmatch
set noswapfile

set t_Co=256
colorscheme termschool

set nocompatible              " be iMproved, required 
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/a.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'bagrat/vim-workspace'
Plugin 'justinmk/vim-syntax-extra'

call vundle#end()            " required
filetype plugin indent on    " required

" Clang Complete
let g:clang_complete_copen = 1
let g:clang_periodic_quickfix = 1
let g:clang_snippets = 1
let g:clang_complete_macros = 1
set conceallevel=2 

autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * NERDTree
autocmd vimenter * Tagbar

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
inoremap <F3> <ESC>:SyntasticReset<CR>i
nnoremap <F3> :SyntasticReset<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Fugitive
set diffopt+=vertical
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gl :Glog<CR>
set splitbelow

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
let g:C_Ctrl_j = 'off'

" Tagbar
nnoremap <F9> :TagbarToggle<CR>
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['+', '-']

" Tcomment
nnoremap <leader>c<space> :TComment<CR>
vnoremap <leader>c<space> :TComment<CR>

" Tabs handling
nnoremap <leader>q :tabp<CR>
nnoremap <leader>w :tabn<CR>
nnoremap <leader>1 :WSPrev<CR>
nnoremap <leader>2 :WSNext<CR>
nnoremap <leader>e :WSTabNew<CR>
nnoremap <leader>3 :WSClose<CR>
nnoremap <leader>4 :tabclose<CR>
set mouse=a

nnoremap <F1> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Function keys for general purpose
nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>i
nnoremap <F7> :!make<CR>

" Toggle between header/source
nnoremap <leader>s :A<CR>
