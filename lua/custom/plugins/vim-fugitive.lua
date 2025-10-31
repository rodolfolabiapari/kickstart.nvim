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
}
