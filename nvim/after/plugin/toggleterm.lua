local map = vim.keymap.set
local nnoremap = function(mode, lhs, rhs, opts)
  local iopts = opts
  local dopts = { nnoremap = true, silent = true }
  if iopts == nil then
    iopts = {}
  end
  vim.tbl_deep_extend('force', dopts, iopts)
  vim.keymap.set(mode, lhs, rhs, iopts)
end

local ok, term = pcall(require, 'toggleterm')
if not ok then
  return
end

term.setup {
}

-- nnoremap('n', '<leader>tt', ':ToggleTerm direction=float<CR>')
nnoremap('n', '<leader>tt', ':ToggleTerm<CR>')
map('t', '<Esc>', [[ <C-\><C-n> ]], {})
map('t', 'jk', [[ <C-\><C-n> ]], {})
map('t', '<C-h>', ':wincmd h<CR>', {})
map('t', '<C-j>', ':wincmd j<CR>', {})
map('t', '<C-k>', ':wincmd k<CR>', {})
map('t', '<C-l>', ':wincmd l<CR>', {})
