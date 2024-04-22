-- Show a status bar at bottom of neovim screen
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'dracula',
      },
    }
  end,
}
