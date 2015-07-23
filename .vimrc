" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Bundle 'klen/python-mode'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
" Gists
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
" Whitespace
Bundle 'ntpeters/vim-better-whitespace'
" NerdTree
Plugin 'scrooloose/nerdtree'
" C
Bundle 'c.vim'
" ctrlp
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on
" END Vundle

syntax on
set background=dark
set number
set tabstop=4
set shiftwidth=4
set expandtab
set modeline
set ls=2
set hlsearch
set incsearch
set ruler
set backspace=indent,eol,start

" splits go right/bottom, as expected
set splitbelow
set splitright

set laststatus=2
set noshowmode
" make the escape key respond faster
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Pymode
let g:pymode_lint = 0
let g:pymode_folding = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 0

" Airline
let g:airline_powerline_fonts = 1

" Go
autocmd FileType go setlocal noexpandtab
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP
let g:ctrlp_working_path_mode = 0
