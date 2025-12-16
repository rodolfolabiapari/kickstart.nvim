return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuração padrão é robusta, mas pode ser personalizada aqui.
        -- Exemplo de uso:
        -- 'ysiw"' -> adiciona aspas duplas ao redor da palavra.
        -- 'ds"' -> deleta aspas duplas ao redor.
        -- 'cs"'' -> muda aspas duplas para simples.
      })
    end,
  },
}
