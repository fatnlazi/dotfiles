local fn = vim.fn

local M = {}

M.unload = function(prefix)
  local prefix_with_dot = prefix..'.'

  for key, _ in pairs(package.loaded) do
    if key == prefix
    or key:sub(1, #prefix_with_dot) == prefix_with_dot
    then
      package.loaded[key] = nil
    end
  end
end

M.require = function(module)
  local ok, modu = pcall(require, module)
  if ok then
    return modu
  end
  return nil
end

M.config_path = fn.stdpath('config')

M.data_path = fn.stdpath('data')

M.glob = function(path)
  return fn.split(fn.glob(path), '\n')
end

M.base = function(path)
  return string.match(path, 'lua/(.+).lua$')
end

M.keymap = function(mode, lhs, rhs, opts)
  local default = {
    noremap = true,
    silent = true,
  }
  if not opts then
    opts = {}
  end
  local opt = vim.tbl_deep_extend('force', default, opts)
  vim.api.nvim_set_keymap(mode, lhs, rhs, opt)
end

return M
