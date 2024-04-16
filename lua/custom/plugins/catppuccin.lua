return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme("catppuccin-latte")
      vim.cmd.colorscheme 'catppuccin-frappe'
    end,
  },
}
