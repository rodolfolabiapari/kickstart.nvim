-- Automatiza listas para inline e linhas quebradas
-- https://github.com/Wansmer/treesj
return {
  'Wansmer/treesj',
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" }, -- Carrega o plugin apenas quando o comando for chamado
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {
    use_default_keymaps = false, -- Desativa os atalhos padrão do plugin para não conflitar
  },
}
