local u = require('core.util')

local null_ls = u.require('null-ls')
if null_ls then
  null_ls.setup {
    null_ls.builtins.diagnostics.cppcheck,
    null_ls.builtins.diagnostics.cpplint,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.luacheck,
    -- null_ls.builtins.diagnostics.lua_format,
    -- null_ls.builtins.diagnostics.stylua,
    -- null_ls.builtins.diagnostics.refactoring,
  }
end
