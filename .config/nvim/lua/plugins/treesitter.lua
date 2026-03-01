-- [nfnl] fnl/plugins/treesitter.fnl
local function _1_()
  local treesitter = require("nvim-treesitter.configs")
  return treesitter.setup({highlight = {enable = false}, indent = {enable = true}, ensure_installed = {"bash", "clojure", "commonlisp", "dockerfile", "fennel", "html", "java", "javascript", "json", "latex", "lua", "markdown", "markdown_inline", "python", "typst", "yaml", "vimdoc"}})
end
return {{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = _1_}}
