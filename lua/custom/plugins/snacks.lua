return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- Módulos Essenciais

    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = {
      enabled = true,
      hidden = true,
      ignored = true,
      layout = {
        preset = "sidebar",
        preview = "main",
      },
    },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    picker = {
      enabled = true,

      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          layout = {
            preset = "default",
            preview = false,
          },
          actions = {
            copy_file_path = {
              action = function(_, item)
                if not item then
                  return
                end

                local vals = {
                  ["BASENAME"] = vim.fn.fnamemodify(item.file, ":t:r"),
                  ["EXTENSION"] = vim.fn.fnamemodify(item.file, ":t:e"),
                  ["FILENAME"] = vim.fn.fnamemodify(item.file, ":t"),
                  ["PATH"] = item.file,
                  ["PATH (CWD)"] = vim.fn.fnamemodify(item.file, ":."),
                  ["PATH (HOME)"] = vim.fn.fnamemodify(item.file, ":~"),
                  ["URI"] = vim.uri_from_fname(item.file),
                }

                local options = vim.tbl_filter(function(val)
                  return vals[val] ~= ""
                end, vim.tbl_keys(vals))
                if vim.tbl_isempty(options) then
                  vim.notify("No values to copy", vim.log.levels.WARN)
                  return
                end
                table.sort(options)
                vim.ui.select(options, {
                  prompt = "Choose to copy to clipboard:",
                  format_item = function(list_item)
                    return ("%s: %s"):format(list_item, vals[list_item])
                  end,
                }, function(choice)
                  local result = vals[choice]
                  if result then
                    vim.fn.setreg("+", result)
                    Snacks.notify.info("Yanked `" .. result .. "`")
                  end
                end)
              end,
            },
            search_in_directory = {
              action = function(_, item)
                if not item then
                  return
                end
                local dir = vim.fn.fnamemodify(item.file, ":p:h")
                Snacks.picker.grep({
                  cwd = dir,
                  cmd = "rg",
                  args = {
                    "-g",
                    "!.git",
                    "-g",
                    "!node_modules",
                    "-g",
                    "!dist",
                    "-g",
                    "!build",
                    "-g",
                    "!coverage",
                    "-g",
                    "!.DS_Store",
                    "-g",
                    "!.docusaurus",
                    "-g",
                    "!.dart_tool",
                  },
                  show_empty = true,
                  hidden = true,
                  ignored = true,
                  follow = false,
                  supports_live = true,
                })
              end,
            },
            diff = {
              action = function(picker)
                picker:close()
                local sel = picker:selected()
                if #sel > 0 and sel then
                  Snacks.notify.info(sel[1].file)
                  vim.cmd("tabnew " .. sel[1].file)
                  vim.cmd("vert diffs " .. sel[2].file)
                  Snacks.notify.info("Diffing " .. sel[1].file .. " against " .. sel[2].file)
                  return
                end

                Snacks.notify.info("Select two entries for the diff")
              end,
            },
          },
          win = {
            list = {
              keys = {
                ["y"] = "copy_file_path",
                ["s"] = "search_in_directory",
                ["D"] = "diff",
              },
            },
          },
        },
      },
    },
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
