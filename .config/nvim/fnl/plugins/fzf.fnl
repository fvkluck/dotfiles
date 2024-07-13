[{1 :junegunn/fzf}
{1 :junegunn/fzf.vim
 :init (fn []
         (vim.keymap.set :n :<c-p> ":FZF<CR>" {:noremap true})
         (vim.keymap.set :n :\ ":Ag<CR>")
         (vim.keymap.set :n :<leader>fw ":grep! \b<C-R><C-W>\b<CR>:cw<CR>")
         )}]
