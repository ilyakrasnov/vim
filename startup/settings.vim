set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

set encoding=utf-8
set ruler
set cursorline cursorcolumn
set relativenumber
set number
set tags=tags;/
set clipboard=unnamed " Enables copy/paste between different instances of vim

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
:filetype plugin on

" set tabstop=1
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Indentation
set autoindent
set cindent

" General menu and settings
set wildmenu
set hlsearch
set cmdheight=2

" Airline settings
set laststatus=2
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1

" Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1

" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'
