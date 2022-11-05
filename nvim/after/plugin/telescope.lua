local u = require('core.util')

local telescope = u.require('telescope')
if telescope then
  telescope.setup {
    pickers = {
      find_files = {
        theme = 'dropdown',
      },
    },
    extensions = {
      -- fzf = {
      --   fuzzy = true,
      --   override_generic_sorter = true,
      --   override_file_sorter = true,
      --   case_mode = 'smart_case',
      -- },
    },
  }

  -- telescope.load_extension('fzf')
end
