-- Carrega arquivo de variaveis do ./lua/config_local.lua
local status_ok, local_config = pcall(require, 'config_local')

return {
  -- https://deepwiki.com/obsidian-nvim/obsidian.nvim/2.3-basic-usage
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  event = {
    'VimEnter',
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = "work",
        -- Utiliza variavel local
        path = local_config.obsidian_work_path,
      }
    },
    legacy_commands = false,
    ui = {
      ignore_conceal_warn = true,
      enable = true,
    },
    completion = {
      blink = true,
      min_chars = 0,
    },
    daily_notes = {
      folder = os.date("9dailies/%Y-%m"),
      date_format = "%d",
      alias_format = "%B %-d %a, %Y",
      default_tags = { "daily-notes" },
      templates = {
        folder = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        substitutions = {},
      },
    },

    -- Essas duas linhas devem andar juntas
    new_notes_location = "notes_subdir",
    notes_subdir = "0inbox",

    templates = {
      folder = "templates",
    }
  },

  -- Custom Keys
  vim.keymap.set("n", "<leader>o",  "<cmd>Obsidian<CR>", { desc = "[O]bsidian Menu"}),
  vim.keymap.set("n", "<leader>ob", "<cmd>Obsidian backlinks<CR>", { desc = "Show [B]acklinks"}),
  vim.keymap.set("n", "<leader>oc", "<cmd>Obsidian toc<CR>", { desc = "To[c] (Table of [C]ontents)"}),
  vim.keymap.set("n", "<leader>od", "<cmd>Obsidian today<CR>", { desc = "To[d]ay"}),
  vim.keymap.set("n", "<leader>og", "<cmd>Obsidian tags<CR>", { desc = "Ta[g]s"}),
  vim.keymap.set("n", "<leader>on", "<cmd>Obsidian new<CR>", { desc = "New [N]ote"}),
  vim.keymap.set("n", "<leader>oq", "<cmd>Obsidian quick_switch<CR>", { desc = "[Q]uick Switch"}),
  vim.keymap.set("n", "<leader>or", "<cmd>Obsidian rename<CR>", { desc = "[R]ename"}),
  vim.keymap.set("n", "<leader>os", "<cmd>Obsidian search<CR>", { desc = "[S]earch"}),
  vim.keymap.set("n", "<leader>ow", "<cmd>Obsidian workspace<CR>", { desc = "Open [W]orkspace"}),
  vim.keymap.set("n", "<leader>ox", "<cmd>Obsidian template<CR>", { desc = "Insere Template [x]"}),
}
