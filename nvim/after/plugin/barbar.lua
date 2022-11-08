local u = require('core.util')
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local barbar = u.require('bufferline')
if barbar then
  barbar.setup {
    animation = true,
    clickable = true,
  }
end

map('n', '<leader>bb', ':BufferPick<CR>', opts)
map('n', '<leader>bc', ':BufferClose<CR>', opts)
map('n', '<leader>bi', ':BufferPin<CR>', opts)
map('n', '<leader>bp', ':BufferPrevious<CR>', opts)
map('n', '<leader>bn', ':BufferNext<CR>', opts)
map('n', '<leader>b[', ':BufferMovePrevious<CR>', opts)
map('n', '<leader>b]', ':BufferMoveNext<CR>', opts)
map('n', '<leader>b1', ':BufferGoto 1<CR>', opts)
map('n', '<leader>b2', ':BufferGoto 2<CR>', opts)
map('n', '<leader>b3', ':BufferGoto 3<CR>', opts)
map('n', '<leader>b4', ':BufferGoto 4<CR>', opts)
map('n', '<leader>b5', ':BufferGoto 5<CR>', opts)
map('n', '<leader>b6', ':BufferGoto 6<CR>', opts)
map('n', '<leader>b7', ':BufferGoto 7<CR>', opts)
map('n', '<leader>b8', ':BufferGoto 8<CR>', opts)
map('n', '<leader>b9', ':BufferGoto 9<CR>', opts)
map('n', '<leader>b0', ':BufferLast<CR>', opts)
