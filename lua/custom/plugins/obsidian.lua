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
}
