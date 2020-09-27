"  Original Author:	     Nicolas Cuervo
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
"""""Indentation and Config"""""
set nowrap      " nowrap displays longlines in only one line.
set expandtab   " Expandtab converts tabs into
set autoindent  " Autoindent copies the indent of last line.
set smartindent " Automatically inserts one level of indent in certain cases.
set tabstop=2
set shiftwidth=2
set linespace=2
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

set encoding=utf-8
"" PEP8 Indentation
au BufNewFile,BufRead *.py setfiletype python
:autocmd FileType python set tabstop=4 |
:autocmd FileType python set softtabstop=4 |
:autocmd FileType python set shiftwidth=4 |
:autocmd FileType python set expandtab |
:autocmd FileType python set autoindent |
:autocmd FileType python set fileformat=unix
let python_highlight_all=1

"" Verilog Indentation
au BufNewFile,BufRead *.v
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"" Enable Folding
set foldmethod=indent
set foldlevel=99
let g:SimplyFold_dpyocstring_preview=1

"" YCM settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_use_clangd = 0
let g:ycm_clangd_binary_path = "/usr/local/bin/clangd"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>f  :YcmCompleter FixIt<CR>

"" vim-clang-format settings
let g:clang_format#detect_style_file = 1
let g:clang_format#auto_format = 0
let g:clang_format#enable_fallback_style = 0
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"clean the highlightning with leaderspace after search is finished
nnoremap <leader><space> :noh<cr>
"" Sets an undofile that allows you to undo changes even if you closed the
"" file. Use carefully
set undofile

"" Set different directories for working files, so that they don't clutter
"" my workspace
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
"Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
""Set indentation colors""
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=242
""""" Bundles using Vundle """""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/vimrc.bundles
""""" Set color theme """""
set t_Co=256
set background=dark
if &term =~ '256color'
    set t_ut=
endif
if has('termguicolors')
  set termguicolors
endif
let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme edge
"" Set missing highlighting for Vimwiki links
""" This is colorscheme specific - Remember this setting if colorscheme changes
highlight Vimlinks guifg=#6cb6eb cterm=underline
hi! link VimwikiLink Vimlinks
"" Airline Configuration ""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'edge'
"""""Syntastic Settings """""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_pylint_rcfile = '~/.pylintrc'
nnoremap <F5> :SyntasticCheck<CR>
nmap J :lnext<CR>
nmap K :lprevious<CR>
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
"Vertical split size
nmap + :vertical resize +5<CR>
nmap = :vertical resize -5<CR>
"""" additional commands """"
inoremap # X<BS>#
"Map colon to space bar
nmap <Space> :
" tab through bufs
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>
" Allow mouse
set mouse=a

" Setting up templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
        autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
        autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
    augroup END
endif

" Add command for JSON pretty formatting
" based on https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python -m json.tool

" FZF
nmap <C-p> :FzfFiles<CR>
nmap ; :FzfGFiles<CR>

" Enhanced highlighting cpp"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" Ultisnips configuration
let g:UltiSnipsExpandTrigger="**"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets=""
map <leader>u :UltiSnipsEdit<CR>

" settings for grip (GitHub flavored markdown)
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=1
let vim_markdown_preview_temp_file=0
let vim_markdown_preview_browser='Mozilla Firefox'

" Folding
set foldmethod=indent

"" Markdown
au BufRead,BufNewFile *.md setfiletype markdown
au BufRead,BufNewFile *.wiki setfiletype vimwiki.markdown

" VimWiki
let g:vimwiki_list = [{
  \ 'path': '~/vimwiki/',
  \ 'path_html': '~/vimwiki_html/',
  \ 'syntax': 'markdown',
  \ 'ext': '.wiki',
  \ 'template_path': '~/vimwiki/templates/',
  \ 'custom_wiki2html': 'vimwiki_markdown',
  \ 'html_filename_parameterization': 1,
  \ 'template_default': 'index',
  \ 'template_ext': '.html'}]

let g:vimwiki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 1

"au BufRead,BufNewFile *.wiki setfiletype vimwiki
autocmd Filetype md,markdown,vimwiki inoremap <leader>now *<CR><Esc>!!date<CR>A*<Esc>kJxA<CR><CR>
autocmd Filetype md,markdown,vimwiki inoremap <leader>today <C-r>=strftime('%F')<CR>
autocmd Filetype md,markdown,vimwiki set wrap spell
map <leader>todo :e ~/vimwiki/todo.wiki<CR>

" Search for selected text, forwards or backwards.
" taken from: https://vim.fandom.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

" Put visual selection to find and replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /- \[ \]/
  lopen
endfunction

nmap <Leader>wa :call VimwikiFindAllIncompleteTasks()<CR>
nmap <Leader>wx :call VimwikiFindIncompleteTasks()<CR>
