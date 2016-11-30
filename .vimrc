set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" SimplyFold for python code folding
Plugin 'tmhedberg/SimpylFold'

" add auto-indentation to python files
Plugin 'vim-scripts/indentpython.vim'

" color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set encoding to UTF8
set encoding=utf-8

" split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding - not needed since using SimpylFold plugin
"set foldmethod=indent
"set foldlevel=99

" enable folding with spacebar
nnoremap <space> za

" show line numbers
set number

" handle proper PEP8 indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" auto choose colorschemees for gvim and vim
set background=dark
if has('gui_running')
    colorscheme molokai
else
    "colorscheme slate
    colorscheme darkblue
endif

" Python syntax highlighting
let python_highlight_all=1
syntax on
