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

"Fuzzy search
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'luochen1990/rainbow'

"Display function current cursor position is in
Plugin 'mgedmin/chelper.vim'

"Display git status in gutter
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'

"Tagbar to show overview of file based on tags
Plugin 'majutsushi/tagbar'

Plugin 'justinmk/vim-syntax-extra'
Plugin 'slim-template/vim-slim.git'

"Plugins for Scala
Plugin 'derekwyatt/vim-scala'

Plugin 'mbbill/undotree'

"Precision colorscheme
Plugin 'altercation/vim-colors-solarized'

""Add the surround motion see :help surround
Plugin 'tpope/vim-surround'

"More pleasant editing on git commit message
Plugin 'rhysd/committia.vim'

"Be able to handle encrypted text files easily
Plugin 'jamessan/vim-gnupg'

"Press s and two character to move to first occurence of those two characters.
"Press ; to repeat.
Plugin 'justinmk/vim-sneak'

"Asynchronous lint engine
Plugin 'w0rp/ale'

"Julia support
Plugin 'JuliaEditorSupport/julia-vim'

"Personal wiki in vim
Plugin 'vimwiki/vimwiki'

call vundle#end()
filetype plugin indent on

syntax enable

let mapleader=","

set statusline+=%{CTagInStatusLine()}

let g:rainbow_active = 1

set number
set relativenumber
set wrap
set linebreak
set nolist
set tw=80
set wrapmargin=0
set formatoptions-=t

set showmode
set smartcase
"Autoindent matches indent level of previous line, smartindent is a bonus on top
"of that to try to react to the code you are editing
set autoindent
set smartindent

"tabstop controls how many columns a tab counts for
set tabstop=2
set softtabstop off
"shiftwidth controls how many columns indent and de-indent operations >> and << use
set shiftwidth=2
"expandtab expands tab with spaces
set expandtab

set incsearch

set omnifunc=syntaxcomplete#Complete
"longest inserts longest common text of all matches, menuone makes menu come up
"even with one match
set completeopt=longest,menuone
"Enter will select highlighted menu item
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"Always keep a menu highlighted, so that if you keep typing characters, you
"narrow the search
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : 
   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
set tags +=~/.vim/systags

set lazyredraw

"To exclude target dir from ctrl-p search
set wildignore+=*/target/*

nmap <Leader>n :NERDTreeToggle<CR>

inoremap ii <Esc>

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

"search and replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set path+=**
set wildmenu

nmap <F8> :TagbarToggle<CR>
nmap <F5> :UndotreeToggle<CR>
nmap <silent> <leader>q :q<CR>

set list listchars=tab:>-,trail:.,extends:>
""To be explored: very interesting  plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
