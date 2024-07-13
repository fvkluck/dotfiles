-- [nfnl] Compiled from fnl/plugins/fzf.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  vim.keymap.set("n", "<c-p>", ":FZF<CR>", {noremap = true})
  vim.keymap.set("n", "\\", ":Ag<CR>")
  return vim.keymap.set("n", "<leader>fw", ":grep! \8<C-R><C-W>\8<CR>:cw<CR>")
end
return {{"junegunn/fzf"}, {"junegunn/fzf.vim", init = _1_}}
