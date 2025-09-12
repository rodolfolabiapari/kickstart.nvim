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
        integrations = {
          treesitter = true,
          native_lsp = { enabled = true },
          telescope = true,
          cmp = true,
          gitsigns = true,
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
}
