return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- Módulos Essenciais

    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true }, -- Quebrar texto em notificações longas
      },
    },
    terminal = { enabled = true }, -- Terminal flutuante poderoso
    toggle = { enabled = true }, -- Gerenciador de toggles
    words = { enabled = true },
    zen = { enabled = true }, -- Modo Zen para escrita (ótimo para Obsidian)
  },

  -- Definição de Atalhos (A mágica acontece aqui)
  keys = {

    -- Grupo [Z]en & Utils
    { "<leader>zz", function() require("snacks").zen() end, desc = "[ZZ]en Mode Toggle" },
    { "<leader>zm", function() require("snacks").zen.zoom() end, desc = "[Z]oom [M]aximize" },
    { "<leader>zs", function() require("snacks").scratch() end, desc = "[Z]en [S]cratchpad" },
    { "<leader>zb", function() require("snacks").bufdelete() end, desc = "Delete [B]uffer" },

    -- Grupo [G]it (Complementar ao Gitsigns)
    { "<leader>gg", function() require("snacks").lazygit() end, desc = "[G]it [G]ui (Lazygit)" },
    { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "[G]it [L]og (Lazygit)" },
    { "<leader>gb", function() require("snacks").git.blame_line() end, desc = "[G]it [B]lame Line" },

    -- === GRUPO Z: Zen / Utilitários (Namespace seguro) ===
    { "<leader>cR", function() require("snacks").rename.rename_file() end, desc = "Rename File" },

    -- === ATALHOS GLOBAIS ÚTEIS ===
    { "]]",         function() require("snacks").words.jump(1, true) end, desc = "Next Reference" },
    { "[[",         function() require("snacks").words.jump(-1, true) end, desc = "Prev Reference" },
  },
  init = function()
    -- Código de inicialização para configurações de UI que afetam o editor globalmente
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- Exemplo: Configurar Debugging ou Toggle Terminais aqui se necessário
      end,
    })
  end,
}
