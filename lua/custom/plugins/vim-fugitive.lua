-- Use :Git inside nvim
-- https://github.com/tpope/vim-fugitive
-- :help fugitive
-- :G blame

return {
  "tpope/vim-fugitive",
  -- Carrega automaticamente no Lazy
  lazy = false,
  keys = {
    -- Abre o :Gstatus (janela de status do Git)
    { "<leader>gs", "<cmd>tabnew | Gstatus<cr>", desc = "Git Status (Fugitive)" }
  },

  -- configurar isso depois
  --  o pager, se for less precisa vir com ignore ansi pois o batcat nao
  --  interpreta ansi #TODO
  -- config = function ()
  --   -- Utiliza o meu nvim como pager
  --   vim.g.git_pager = "nvim",
  --   vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
  -- end
}
