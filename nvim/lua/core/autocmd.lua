local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('hybrid_number_toggle', { clear = true })
autocmd({
  'BufEnter',
  'FocusGained',
  'InsertLeave',
}, {
  group = 'hybrid_number_toggle',
  pattern = '*',
  command = ':set number relativenumber',
})
autocmd({
  'BufLeave',
  'FocusLost',
  'InsertEnter',
}, {
  group = 'hybrid_number_toggle',
  pattern = '*',
  command = ':set number norelativenumber',
})
