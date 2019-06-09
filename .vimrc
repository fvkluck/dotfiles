set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()

Plug 'Shougo/vimproc.vim.git'

Plug 'luochen1990/rainbow'

"Display function current cursor position is in
Plug 'mgedmin/chelper.vim'

"Display git status in gutter
Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'

"Tagbar to show overview of file based on tags
Plug 'majutsushi/tagbar'

Plug 'justinmk/vim-syntax-extra'
Plug 'slim-template/vim-slim.git'

"Plugs for Scala
Plug 'derekwyatt/vim-scala'

Plug 'mbbill/undotree'

"Precision colorscheme
Plug 'altercation/vim-colors-solarized'

""Add the surround motion see :help surround
Plug 'tpope/vim-surround'

"More pleasant editing on git commit message
Plug 'rhysd/committia.vim'

"Be able to handle encrypted text files easily
Plug 'jamessan/vim-gnupg'

"Press s and two character to move to first occurence of those two characters.
"Press ; to repeat.
Plug 'justinmk/vim-sneak'

"Asynchronous lint engine
Plug 'w0rp/ale'

"Julia support
Plug 'JuliaEditorSupport/julia-vim'

"Personal wiki in vim
Plug 'vimwiki/vimwiki'

"Python PEP-8 checker
Plug 'nvie/vim-flake8'

"Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader=","

set statusline+=%{CTagInStatusLine()}

let g:rainbow_active = 1

set number
set relativenumber
set wrap
set linebreak
set nolist
set tw=0
set wrapmargin=0
set formatoptions-=t

set showmode
set smartcase
"Autoindent matches indent level of previous line, smartindent is a bonus on top
"of that to try to react to the code you are editing
set autoindent
set smartindent

"tabstop controls how many columns a tab counts for
set tabstop=4
"shiftwidth controls how many columns indent and de-indent operations >> and << use
set shiftwidth=4
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

nnoremap gh :w <CR>

"edit .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
"put changes into effect
nmap <silent> <leader>sv :so %<CR>
" clear highlight
nmap <silent> <leader>/ :nohlsearch<CR>

"search and replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

nnoremap <C-p> :Files<CR>

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set path+=**
set wildmenu

"allow folding with for example zm, zM, zr and zR, see :help fold
set foldmethod=indent
set foldlevelstart=0

nmap <F8> :TagbarToggle<CR>
nmap <F5> :UndotreeToggle<CR>
nmap <silent> <leader>q :q<CR>

" Keep swapfiles in central location
set directory^=$HOME/.vim/swapfiles//

set list listchars=tab:>-,trail:.,extends:>
""To be explored: very interesting  plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'

" persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

"The Silver Searcher
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"Note that Ag is now a command of fzf
nnoremap \ :Ag<CR>
