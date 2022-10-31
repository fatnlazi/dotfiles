local u = require('core.util')

vim.g.mapleader = ' '

u.keymap('i', 'jk', '<ESC>')

-- resize
u.keymap('n', ';h', ':vertical resize +5 <CR>')
u.keymap('n', ';l', ':vertical resize -5 <CR>')
u.keymap('n', ';j', ':resize +5 <CR>')
u.keymap('n', ';k', ':resize -5 <CR>')

-- easier moving of code block
u.keymap('v', '<', '<gv')
u.keymap('v', '>', '>gv')

-- move line around
u.keymap('n', '<M-j>', [[:m .+1<CR>==]])
u.keymap('n', '<M-k>', [[:m .-2<CR>==]])
u.keymap('v', '<M-j>', [[:m '>+1<CR>gv=gv]])
u.keymap('v', '<M-k>', [[:m '<-2<CR>gv=gv]])

u.keymap('n', '<leader>ff', ':Telescope find_files<CR>')
u.keymap('n', '<leader>fg', ':Telescope live_grep<CR>')
u.keymap('n', '<leader>fb', ':Telescope buffers<CR>')
u.keymap('n', '<leader>fh', ':Telescope help_tags<CR>')

u.keymap('n', '<leader>et', ':NvimTreeToggle<CR>')
u.keymap('n', '<leader>ef', ':NvimTreeFocus<CR>')
u.keymap('n', '<leader>er', ':NvimTreeFindFileToggle<CR>')
u.keymap('n', '<leader>ec', ':NvimTreeCollapse<CR>')
