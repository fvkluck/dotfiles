-- [nfnl] Compiled from fnl/config/init.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local core = autoload("nfnl.core")
vim.keymap.set("n", "<space>", "<nop>", {noremap = true})
vim.keymap.set("n", "gh", ":w<CR>", {noremap = true})
vim.keymap.set("n", "<leader>q", ":q<CR>", {noremap = true})
vim.keymap.set("n", "<leader>ev", ":e $MYVIMRC<CR>", {noremap = true})
vim.keymap.set("n", "<leader>wd", ":cd %:h<CR>", {noremap = true})
vim.keymap.set("n", "<C-N>", ":cprev<CR>", {noremap = true})
vim.keymap.set("n", "<C-M>", ":cnext<CR>", {noremap = true})
vim.keymap.set("n", "<leader>k", ":grep <C-R><C-W><CR>", {noremap = true})
vim.keymap.set("n", "<localleader>/", ":nohlsearch<CR>", {noremap = true})
vim.filetype.add({bb = "babashka"})
do
  local options = {expandtab = true, list = true, listchars = "tab:>-,trail:.,extends:>", clipboard = "unnamedplus", tabstop = 2, shiftwidth = 2, softtabstop = 2, completeopt = "menuone,noselect", undofile = true, undodir = core.str(vim.fn.expand("~"), "/.vim/undo"), undolevels = 1000, undoreload = 10000, number = true, relativenumber = true, ruler = true, signcolumn = "number", grepprg = "ag --vimgrep --nogroup --nocolor -s --ignore tags", termguicolors = true}
  for option, value in pairs(options) do
    core.assoc(vim.o, option, value)
  end
end
core.assoc(vim.g, "netrw-keepdir", 0)
vim.cmd.colorscheme("NeoSolarized")
return {}
