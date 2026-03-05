-- autopairs
-- Configura o checkbox e itens items ao apertar enter
-- Fecha automaticamente [], ()...
-- https://github.com/windwp/nvim-autopairs

---@module 'lazy'
---@type LazySpec
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
}
