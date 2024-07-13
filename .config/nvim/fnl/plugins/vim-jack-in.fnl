[{1 :tpope/vim-dispatch}
 {1 :radenling/vim-dispatch-neovim
  :dependencies [:tpope/vim-dispatch]}
 {1 :clojure-vim/vim-jack-in
  :dependencies [:radenling/vim-dispatch-neovim]
  :init (fn [] 
          (vim.keymap.set :n :<leader>clj ":Clj<CR><C-\\><C-n>:tabp<CR>")
          )}]
