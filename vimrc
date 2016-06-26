" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:	         2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
""""
set laststatus=2
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Set linenumber and a couple of style checkers
set number
set colorcolumn=90

" Sets leaderkey to comma
let mapleader=","
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden
""""" Set color theme """""
set t_Co=256
colorscheme gurunew
"""""Intentation"""""
"nowrap displays longlines in only one line. Expandtab converts tabs into
"tabstop spaces. Autoindent copies the indent of last line. Smartindent
"automatically inserts one level of indent in certain cases.
set nowrap
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set linespace=4

"Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"Cancel search with Escape <CAPSLOCK>
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>


""Set indentation colors""
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=242
""""" Bundles using Vundle """""

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/vimrc.bundles

"Show matching parenthesis
set showmatch
""""" Key Mappings """""
map ,s :source ~/.vimrc
" Nerdtree Toggle (Duh!)
map <F12> :NERDTreeToggle<CR>
"""" Normal mode """"
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
"""" visual  mode """"
vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>
