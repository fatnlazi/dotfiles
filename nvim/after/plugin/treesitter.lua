local ok, ts, ct

ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

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
      enable = false,
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

ok, ct = pcall(require, 'treesitter-context')
if not ok then
  return
end

ct.setup {
  enable = true,
}
