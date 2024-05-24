(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))
(local core (autoload :nfnl.core))

;space is reserved to be lead
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(nvim.set_keymap :n "gh" ":w<CR>" {:noremap true})

(nvim.set_keymap :n :<leader>ev ":e $MYVIMRC<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>wd ":cd %:h<CR>" {:noremap true})

(nvim.set_keymap :n :<F3> ":cprev<CR>" {:noremap true})
(nvim.set_keymap :n :<F4> ":cnext<CR>" {:noremap true})

(nvim.set_keymap :n :<localleader>/ ":nohlsearch<CR>" {:noremap true})

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
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       ;shared clipboard with linux
       :clipboard "unnamedplus"
       ;relative line numbers except for current line
       :number true
       :relativenumber true
       ;show line and column number
       :ruler true
       ;makes signcolumn always one column with signs and linenumber
       :signcolumn "number"}]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))

{}
