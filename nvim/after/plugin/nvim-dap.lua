local u = require('core.util')

local lldb = function(dap)
  dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode',
    name = 'lldb',
  }
  dap.configurations.cpp = {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    args = {},
    env = function()
      local variables = {}
      for k, v in pairs(vim.fn.environ()) do
        table.insert(variables, string.format('%s=%s', k, v))
      end
      return variables
    end,
  }
  dap.configurations.c = dap.configurations.cpp
end

local dap = u.require('dap')
if dap then
  lldb(dap)
end
