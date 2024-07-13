-- [nfnl] Compiled from fnl/plugins/vim-jack-in.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  return vim.keymap.set("n", "<leader>clj", ":Clj<CR><C-\\><C-n>:tabp<CR>")
end
return {{"tpope/vim-dispatch"}, {"radenling/vim-dispatch-neovim", dependencies = {"tpope/vim-dispatch"}}, {"clojure-vim/vim-jack-in", dependencies = {"radenling/vim-dispatch-neovim"}, init = _1_}}
