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
    -- === GRUPO Z: Zen / Utilitários (Namespace seguro) ===
    { "<leader>z",  function() require("snacks").zen() end, desc = "Toggle [z]en Mode" },
    { "<leader>Z",  function() require("snacks").zen.zoom() end, desc = "Toggle [Z]oom" },
    { "<leader>bd", function() require("snacks").bufdelete() end, desc = "Delete Buffer" },
    { "<leader>cR", function() require("snacks").rename.rename_file() end, desc = "Rename File" },

    -- === GRUPO G: Git (Integração com seu grupo existente) ===
    -- O Kickstart já tem <leader>g como grupo. Adicionamos ações diretas.
    { "<leader>gg", function() require("snacks").lazygit() end, desc = "Lazygit" },
    { "<leader>gb", function() require("snacks").git.blame_line() end, desc = "Git Blame Line" },
    { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Git Log (Lazygit)" },

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
