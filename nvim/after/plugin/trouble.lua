local ok, trb, clr

ok, trb = pcall(require, 'trouble')
if not ok then
  return
end

trb.setup {
  auto_open = true,
  auto_close = true,
}

ok, clr = pcall(require, 'lsp-colors')
if not ok then
  return
end

clr.setup {}
