-- [nfnl] Compiled from fnl/plugins/paredit.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local surround = require("nvim-surround")
  return surround.setup()
end
return {{"kylechui/nvim-surround", event = "VeryLazy", config = _1_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}}}
