-- Use :Git inside nvim
-- https://github.com/tpope/vim-fugitive

return {
  "tpope/vim-fugitive",
  keys = {
    -- Abre o :Gstatus (janela de status do Git)
    { "<leader>gs", "<cmd>tabnew | Gstatus<cr>", desc = "Git Status (Fugitive)" }
  },
}
