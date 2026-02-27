-- Configuração padrão é robusta, mas pode ser personalizada aqui.
-- Exemplo de uso:
-- 'ysiw"' -> adiciona aspas duplas ao redor da palavra.
-- 'ds"' -> deleta aspas duplas ao redor.
-- 'cs"'' -> muda aspas duplas para simples.
return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {}, -- Isso automaticamente chama o .setup({})
  },
}
