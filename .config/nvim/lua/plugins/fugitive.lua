-- [nfnl] fnl/plugins/fugitive.fnl
vim.keymap.set("n", "gl", ":vertical :G log --decorate<CR>", {noremap = true})
vim.keymap.set("n", "<leader>g", ":vertical :G<CR>", {noremap = true})
vim.keymap.set("n", "<leader>gl", ":vertical :G log<CR>", {noremap = true})
vim.keymap.set("n", "<leader>gb", ":G blame<CR>", {noremap = true})
vim.keymap.set("n", "<leader>gc", ":vertical :G commit<CR>", {noremap = true})
return {{"tpope/vim-fugitive"}, {"rhysd/committia.vim"}}
