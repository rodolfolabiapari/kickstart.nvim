return {
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
        name = "personal",
        path = vim.fn.expand '~/Documents/obsidian/linux/'
      }
    },
    legacy_commands = false,
    ui = {
      ignore_conceal_warn = true,
    },
    completion = {
      blink = true
    },
    daily_notes = {
      folder = os.date("9dailies/%Y-%m"),
      date_format = "%d",
      alias_format = "%B %-d, %Y",
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
  vim.keymap.set("n", "<leader>oc", "<cmd>Obsidian toc<CR>", { desc = "To[c] (table of contents)"}),
  vim.keymap.set("n", "<leader>od", "<cmd>Obsidian today<CR>", { desc = "To[d]ay"}),
  vim.keymap.set("n", "<leader>of", "<cmd>Obsidian follow_links<CR>", { desc = "[F]ollow Note"}),
  vim.keymap.set("n", "<leader>og", "<cmd>Obsidian tags<CR>", { desc = "Ta[g]s"}),
  vim.keymap.set("n", "<leader>on", "<cmd>Obsidian new<CR>", { desc = "New [N]ote"}),
  vim.keymap.set("n", "<leader>oq", "<cmd>Obsidian quick_switch<CR>", { desc = "[Q]uick Switch"}),
  vim.keymap.set("n", "<leader>or", "<cmd>Obsidian rename<CR>", { desc = "[R]ename"}),
  vim.keymap.set("n", "<leader>os", "<cmd>Obsidian search<CR>", { desc = "[S]earch"}),
  vim.keymap.set("n", "<leader>ow", "<cmd>Obsidian workspace<CR>", { desc = "Open [W]orkspace"}),
  vim.keymap.set("n", "<leader>ox", "<cmd>Obsidian template<CR>", { desc = "Insere Template [x]"}),
}
