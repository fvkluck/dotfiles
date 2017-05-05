set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"" Keep Plugin commands between vundle#begin/end.
Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/vimproc.vim.git'

"autocompletion, with <tab>
Plugin 'Shougo/neocomplete.vim.git'
Plugin 'ervandew/supertab.git'

Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'

"syntax checker
Plugin 'scrooloose/syntastic.git'

"Fuzzy search
Plugin 'ctrlpvim/ctrlp.vim.git'
"Plugin 'kien/rainbow_parentheses.vim.git'
Plugin 'luochen1990/rainbow'

"Display function current cursor position is in
Plugin 'mgedmin/chelper.vim'

"Display git status in gutter
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'

"Tagbar to show overview of file based on tags
Plugin 'majutsushi/tagbar'

Plugin 'Valloric/YouCompleteMe'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'slim-template/vim-slim.git'

"Auto tags updater + syntax highlighting
"easytags depends on vim-misc
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

"Plugins for Scala
Plugin 'derekwyatt/vim-scala'

"Alternate files quickly
Plugin 'vim-scripts/a.vim'

Plugin 'mbbill/undotree'

"Precision colorscheme
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

syntax enable

let mapleader=","

"Autocomplete automatically pops up 
let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntix#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
set statusline+=%{CTagInStatusLine()}

"Specify ctags command
let g:easytags_cmd = '/usr/bin/ctags-exuberant'

let g:rainbow_active = 1

set number
set relativenumber
set wrap
set linebreak
set nolist

set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=3
set shiftwidth=3
set expandtab
set incsearch

"scroll offset
set so=10
set sidescrolloff=10

set lazyredraw

"To exclude target dir from ctrl-p search
set wildignore+=*/target/*

"recommended by syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
map <Leader>s :SyntasticToggleMode<CR>

map <Leader>n :NERDTreeToggle<CR>

:inoremap ii <Esc>

nnoremap gh :w <CR>

"edit .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
"put changes into effect
nmap <silent> <leader>sv :so %<CR>
" clear highlight
nmap <silent> <leader>/ :nohlsearch<CR>
"CtrlPBuffer
nmap <silent> <leader>. :CtrlPBuffer<CR>
"delete buffer
nmap <silent> <leader>bd :bd<CR>
"most recently used
nmap <silent> <leader>m :CtrlPMRU<CR>

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

nmap <F8> :TagbarToggle<CR>
nmap <F5> :UndotreeToggle<CR>
nmap <silent> <leader>q :q<CR>

""To be explored: very interesting  plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
