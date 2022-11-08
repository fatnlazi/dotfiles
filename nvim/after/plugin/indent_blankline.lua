local ok, idt
local use_treesitter = false

ok, idt = pcall(require, 'indent_blankline')
if not ok then
  return
end

ok, _ = pcall(require, 'treesitter')
if ok then
  use_treesitter = true
end

idt.setup {
  enabled = true,
  char = '▏',
  context_char = '▏',
  show_current_context = false,
  space_char_blankline = ' ',
  use_treesitter = use_treesitter,
  show_first_indent_level = false,
  show_trailing_blankline_inden = false,
  exclude = {
    'checkhealth',
    'help',
    'lspinfo',
    'man',
    'packer',
  },
  buftype_exclude = {
    'nofile',
    'prompt',
    'quickfix',
    'terminal',
  },
  use_treesitter_scope = use_treesitter,
}
