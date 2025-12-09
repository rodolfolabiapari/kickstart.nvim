-- ----------------------------------------------------------------------------
-- Confguracoes do stevearc/comfort.nvim
-- ----------------------------------------------------------------------------
-- Bind para auto format em modo visual. Entra no modo v, seleciona o bloco e ao presionar <leader>cf executa-se o formatatdor somente nesse range
-- Precisa que o LSP (black, prettier...) estejam em funcionamento
vim.keymap.set({ 'n', 'v' }, '<leader>cf', function()
  -- O modo 'v' envia automaticamente o range para conform.format
  -- O modo 'n' formata o buffer inteiro (comportamento padrão)
  require('conform').format { async = true, lsp_fallback = true }
end, { desc = '[C]ode [F]ormat - Selection/Buffer' })

-- Mapeamento adicional e explícito (opcional)
vim.keymap.set('v', '<leader>cf', '<cmd>ConformFormat<CR>', { desc = '[C]ode [F]ormat Selection' })

