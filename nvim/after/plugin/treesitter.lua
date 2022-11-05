local u = require('core.util')

local ts = u.require('nvim-treesitter.configs')
if ts then
  ts.setup {
    ensure_install = { "lua", "c" },
    highlight = {
      enable = true,
    },
    refactor = {
      highlight_definitions = {
        enable = true,
        clear_on_cursor_move = true,
      },
      highlight_current_scope = {
        enable = true,
      },
      smart_rename = {
        enable = true,
        keymaps = {
          smart_rename = 'grr',
        },
      },
      navigation = {
        enable = true,
        keymaps = {
          goto_definition = 'gnd',
          list_definitions = 'gnD',
          list_definitions_toc = 'gO',
          goto_next_usage = '<a-*>',
          goto_previous_usage = '<a-#>',
        },
      },
    },
  }
end

local ct = u.require('treesitter-context')
if ct then
  ct.setup {
    enable = true,
  }
end
