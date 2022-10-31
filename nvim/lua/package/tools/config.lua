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

local telescope = u.require('telescope')
if telescope then
  telescope.setup {
  }
end

local nvimtree = u.require('nvim-tree')
if nvimtree then
  nvimtree.setup {
  }
end
