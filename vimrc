"  Original Author:	     Nicolas Cuervo
"  Last change:	         01 - July - 2016
"
"  For installation steps read the README.md at my GitHub
"  www.github.com/primercuervo
"
"  I'm trying to make this as documented and readable as possible. However, if
"  there is some setting you don't understand just type in vim :h <setting>

" Use VIM settings and make VI no compatible
set nocompatible
" Holds last window status (Useful for bundles like airline and for sp and vsp
set laststatus=2
" Backspace configuration
set backspace=indent,eol,start
" Switch syntax highlighting on
syntax on
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
" Set linenumber and a couple of style checkers
set number
set colorcolumn=80
" Sets leaderkey to comma
let mapleader=","
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden
""""" Set color theme """""
set t_Co=256
colorscheme miko
"""""Indentation and Config"""""
set nowrap      " nowrap displays longlines in only one line.
set expandtab   " Expandtab converts tabs into
set autoindent  " Autoindent copies the indent of last line.
set smartindent " Automatically inserts one level of indent in certain cases.
set tabstop=4
set shiftwidth=4
set linespace=4
"" Less lag by needing less processing
set lazyredraw
set ttyfast
"
set relativenumber
"if your search is lowercase, it wont be case sensitive. If some of the chars
"are uppercase, it WILL be case sensitive
set ignorecase
set smartcase
"" search-highlight, even during writing
set incsearch
set showmatch
set hlsearch
"" Set autocomplete bash-like
set wildmode=longest,list,full
set wildmenu
"clean the highlightning with leaderspace after search is finished
nnoremap <leader><space> :noh<cr>
"" Sets an undofile that allows you to undo changes even if you closed the
"" file. Use carefully
set undofile
"Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
""Set indentation colors""
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=242
"" Airline Configuration ""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'cool'
""""" Bundles using Vundle """""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/vimrc.bundles
"""""Syntastic Settings """""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Show matching parenthesis
set showmatch
""""" Key Mappings """""
map ,s :source ~/.vimrc
" Nerdtree Toggle (Duh!)
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>
" Tagbar Toggle
nmap <F3> :TagbarToggle<CR>
imap <F3> <ESC>:TagbarToggle<CR>
"Minibuffer Explorer Toggle
map <C-F12> :MBEToggle<cr>
"IndentGuidesToggle
nmap <F4> :IndentGuidesToggle<cr>
imap <F4> <ESC>:IndentGuidesToggle<cr>
"""" additional commands """"
" ctrl-tab through tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"Map colon to space bar
nmap <Space> :
" tab through bufs
map <Tab> :bnext<Enter>
map <S-Tab> :bprev<Enter>
" Allow mouse
set mouse=a
"set tw=85
