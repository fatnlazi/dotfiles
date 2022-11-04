local u = require('core.util')

local indent_blankline = u.require('indent_blankline')
if indent_blankline then
  indent_blankline.setup {
    char = '▏',
    show_current_context = true,
  }
end
