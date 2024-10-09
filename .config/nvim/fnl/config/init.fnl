(local {: autoload} (require :nfnl.module))
(local core (autoload :nfnl.core))

;space is reserved to be lead
(vim.keymap.set :n :<space> :<nop> {:noremap true})
(vim.keymap.set :n "gh" ":w<CR>" {:noremap true})
(vim.keymap.set :n :<leader>q ":q<CR>" {:noremap true})

(vim.keymap.set :n :<leader>ev ":e $MYVIMRC<CR>" {:noremap true})
(vim.keymap.set :n :<leader>wd ":cd %:h<CR>" {:noremap true})

(vim.keymap.set :n :<C-N> ":cprev<CR>" {:noremap true})
(vim.keymap.set :n :<C-M> ":cnext<CR>" {:noremap true})
(vim.keymap.set :n :<leader>k ":grep <C-R><C-W><CR>" {:noremap true})

(vim.keymap.set :n :<localleader>/ ":nohlsearch<CR>" {:noremap true})

(vim.filetype.add {"bb" "babashka"})

;sets a nvim global options
(let [options
      {;tabs is space
       :expandtab true
       ;show whitespace
       :list true
       :listchars "tab:>-,trail:.,extends:>"
       ;easier use of system clipboard
       :clipboard "unnamedplus"
       ;tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2
       ;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ; persistent undo
       :undofile true
       :undodir (core.str (vim.fn.expand "~") "/.vim/undo")
       :undolevels 1000
       :undoreload 10000
       ;shared clipboard with linux
       :clipboard "unnamedplus"
       ;show line numbers
       :number true
       :relativenumber true
       ;show line and column number
       :ruler true
       ;makes signcolumn always one column with signs and linenumber
       :signcolumn "number"
       ; searching
       :grepprg "ag --vimgrep --nogroup --nocolor -s --ignore tags"
       ;for them
       :termguicolors true}]
  (each [option value (pairs options)]
    (core.assoc vim.o option value)))

 ; fix netrw
(core.assoc vim.g :netrw-keepdir 0)

(vim.cmd.colorscheme "NeoSolarized")

{}
