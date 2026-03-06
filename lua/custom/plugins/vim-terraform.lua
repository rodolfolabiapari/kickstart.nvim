-- Faz format em aquivos terraform automaticamente
return {
  {
    'hashivim/vim-terraform',
    ft = { "terraform", "hcl" },
    config = function()
      -- Faz com que o Neovim rode 'terraform fmt' ao salvar
      vim.g.terraform_fmt_on_save = 1
      -- Garante que o filetype seja definido corretamente
      vim.g.terraform_align = 1
    end
  },
}
