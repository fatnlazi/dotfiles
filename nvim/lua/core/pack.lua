local u = require('core.util')
local packer = u.require('packer')
local packer_url = 'https://github.com/wbthomason/packer.nvim'
local packer_path = u.data_path..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap = false

if not packer then
  if #u.glob(packer_path) == 0 then
    vim.cmd('!git clone --depth 1 '..packer_url..' '..packer_path)
    packer_bootstrap = true
  end
  vim.cmd('packadd packer.nvim')
  packer = u.require('packer')
  if not packer then
    vim.notify('packer download failed!', vim.log.ERROR)
    return
  end
end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float {
        border = 'rounded',
      }
    end,
  },
}

packer.reset()

packer.use 'wbthomason/packer.nvim'
packer.use 'nvim-lua/plenary.nvim'
packer.use 'nvim-lua/popup.nvim'

for _, val in ipairs(u.glob(u.config_path..'/lua/package/*/specify.lua')) do
  local specify = u.require(u.base(val))
  for _, each_specify in ipairs(specify) do
    packer.use(each_specify)
  end
end

if packer_bootstrap then
  packer.sync()
end

for _, val in ipairs(u.glob(u.config_path..'/lua/package/*/config.lua')) do
  u.require(u.base(val))
end
