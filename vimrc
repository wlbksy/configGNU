set nocompatible

""""""""""""""""""""""""""""""""""
syntax on
set background=dark

set ts=4
set sw=4
set sts=4
set expandtab
set mouse=a
set incsearch
set relativenumber
set number

set clipboard=unnamed,unnamedplus

set laststatus=2

""""""""""""""""""""""""""""""""""
no <up> <nop>
no <down> <nop>
no <left> <nop>
no <right> <nop>
vno <up> <nop>
vno <down> <nop>
vno <left> <nop>
vno <right> <nop>
ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>

nnoremap <Space>j <C-f>zz
nnoremap <Space>k <C-b>zz
vnoremap <Space>j <C-f>zz
vnoremap <Space>k <C-b>zz

let mapleader=','

" auto-complete
imap { {}<Esc>i
imap [ []<Esc>i
imap ( ()<esc>i
imap '' ''<Esc>i
imap "" ""<Esc>i
imap <> <><Esc>i

imap <F2> <Esc>la
