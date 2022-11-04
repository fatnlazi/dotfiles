local u = require('core.util')

local treesitter = u.require('nvim-treesitter.configs')
if treesitter then
  treesitter.setup {
    ensure_install = { "lua", "c" },
    highlight = {
      enable = true,
    },
  }
end
