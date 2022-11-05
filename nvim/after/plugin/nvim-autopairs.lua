local u = require('core.util')

local nvim_autopairs = u.require('nvim-autopairs')
if nvim_autopairs then
  local cmp = u.require('cmp')
  if cmp then
    local cmp_autopairs = u.require('nvim-autopairs.completion.cmp')
    if cmp_autopairs then
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end
  else
    nvim_autopairs.setup {
      map_cr = true,
    }
  end

  nvim_autopairs.setup {
    check_ts = true,
    ts_config = {
      lua = { 'string' },
      javascript = { 'template_string' },
    },
  }

end
