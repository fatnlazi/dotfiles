local u = require('core.util')
local colorscheme = 'catppuccin'

if colorscheme == 'catppuccin' then
  local catppuccin = u.require('catppuccin')

  if catppuccin then
    catppuccin.setup {
      flavour = 'mocha',
    }
    vim.cmd('colorscheme catppuccin')
  end
end
