
set nocompatible                      " be iMproved, required
filetype off                          " required

"set the position of The plugin of vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


"Plugin 'VundleVim/Vundle.vim'

" Define bundles to install the plugins of vundle via Github repos "
Bundle 'christoomey/vim-run-interactive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'croaky/vim-colors-github'
Bundle 'danro/rename.vim'
Bundle 'majutsushi/tagbar'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/vim-slim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/tComment'
Bundle 'mattn/emmet-vim'
"the source may be unavaliable
Bundle 'scrooloose/nerdtree' 
Bundle 'Lokaltog/vim-powerline'
Bundle 'godlygeek/tabular'
Bundle 'msanders/snipmate.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'altercation/vim-colors-solarized'
Bundle 'othree/html5.vim'
Bundle 'xsbeats/vim-blade'
Bundle 'Raimondi/delimitMate'
Bundle 'groenewege/vim-less'
"Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'chr4/nginx.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomasr/molokai'
"Bundle 'klen/python-mode'
Bundle 'vim-scripts/taglist.vim'
"Bundle 'gmarik/vundle'
Bundle 'davidhalter/jedi-vim'

"Plugin 'tpope/vim-fugitive'
"Bundle 'Shougo/neocomplete.vim'
"Bundle 'ervandew/supertab'
"Bundle 'Chiel92/vim-autoformat'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'tell-k/vim-autopep8'
Bundle 'lervag/vimtex'
Bundle 'flazz/vim-colorschemes'
Bundle 'joshdick/onedark.vim'
Bundle 'wesQ3/vim-windowswap'
Bundle 'jiangmiao/auto-pairs'

"Static syntax detection
let g:syntastic_lua_checkers = ['luacheck']
let python_highlight_all=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"common settings
set backspace=indent,eol,start " make the deleting function of backspace
syntax enable             " highlight the syntax
set background=dark       " set the color of the background
colorscheme Monokai       " default the color blending
set nocompatible          " close the compatibility to vi
set nu                    " set the number of line

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=120
set showmatch
set expandtab
set autoindent
set fileformat=unix
set nohls
set guifont=Consolas:h14

set encoding=utf-8
set langmenu=zh_CN.UTF-8

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages zh_CN.UTF-8

au GUIEnter * simalt ~x

"highlight the current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"NERDTree shortcuts
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="left"             "show NERDTree on left
let g:NERDTreeWinSize=25                "max length of each line
let g:NERDTreeShowLineNumbers=1         "show line number
let NERDTreeShowHidden=1                "if showing the hidden files
"let g:nerdtree_tabs_open_on_console_startup=1 "is sharing the NERDTree in multi-pages
let NERDTreeIgnore=['\.pyc','\~$','\.swp'] "not show tsese types of file
" let NERDTreeShowBookmarks=1           " show the bookmark list
let NERDTreeHighlightCursorline = 1     "hilight current line
let g:NERDTreeAutoCenter=1
let g:neocomplcache_enable_at_startup = 1
"automatically close NERDTree when opening file from it
"let g:NERDTreeQuitOnOpen=1
""automatically open NERDTree when opening vim
"autocmd vimenter * NERDTree            
"autocmd VimEnter * wincmd p            "the cursor is first in file when opening vim
