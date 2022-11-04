local u = require('core.util')

local nvimtree = u.require('nvim-tree')
if nvimtree then
  nvimtree.setup {
    sort_by = 'case_sensitive',
    view = {
      adaptive_size = true,
      float = {
        enable = true,
      },
    },
    renderer = {
      group_empty = true,
      indent_markers = {
        enable = true,
      },
    },
    filters = {
      dotfiles = true,
    },
  }
end
