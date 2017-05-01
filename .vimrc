set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/vimproc.vim.git'
Plugin 'Shougo/neocomplete.vim.git'
Plugin 'ervandew/supertab.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'kien/rainbow_parentheses.vim.git'

Plugin 'airblade/vim-gitgutter'

"Plugins for Scala
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntix#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

:inoremap ii <Esc>
let mapleader=","

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

"To exclude target dir from ctrl-p search
set wildignore+=*/target/*

"recommended by syntastic
set statusline+=%#warningmsg
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_haskell_checker = ['HLint']
map <Leader>s :SyntasticToggleMode<CR>

map <Leader>n :NERDTreeToggle<CR>

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

nmap <silent> <leader>t :TagbarToggle<CR>
