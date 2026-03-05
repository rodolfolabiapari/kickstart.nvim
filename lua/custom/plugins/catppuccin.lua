local status_ok, local_config = pcall(require, 'config_local')

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function ()
      require("catppuccin").setup({
        flavour = local_config.nvim_theme,
        -- flavour = "mocha",
        integrations = {
          cmp = true,
          fidget = true,
          gitsigns = true,
          lsp_trouble = true,
          native_lsp = { enabled = true },
          telescope = true,
          treesitter = true,
          which_key = true,
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
}
