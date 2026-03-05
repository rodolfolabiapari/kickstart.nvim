-- lua/custom/keymaps.lua

-- Informações úteis:
-- Não é necessário remover os keys de dentro dos plugins se eles tiverem dentro de `keys = {}`.

local wk = require("which-key")

-- 2. Registro de Grupos e Nomes para o Which-Key
wk.add({
  { "<leader>c", group = "[C]ode", icon = "󰅩 " },
  { "<leader>d", group = "[D]ocument / [D]iagnostics" },
  { "<leader>f", group = "Files" },
  { "<leader>g", group = "[G]it", icon = "󰊢 " },
  { "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
  { "<leader>j", group = "[J]oin / Split (TreeSJ)" },
  -- { "<leader>n", group = "[N]oice / Mensagens", icon = "󰎟 " },
  { "<leader>o", group = "[O]bsidian", icon = "󱓧 " },
  { "<leader>r", group = "[R]ename" },
  { "<leader>s", group = "[S]earch / Snacks", icon = " " },
  { "<leader>t", group = "[T]oggles / UI", icon = "󰔡 " },
  { "<leader>w", group = "[W]orkspace" },
  { "<leader>z", group = "[Z]en & Scratch", icon = "󝚭 " },
  { "s", group = "Flash Jump" },
  { "g", group = "[G]oto / LSP", icon = "󰈄 " },
})


-- 3. Mapeamento dos Plugins Custom
wk.add({
  -- Atalhos de Diagnóstico Nativo
  { "<leader>q", vim.diagnostic.setloclist, desc = "Open Diagnostic [Q]uickfix List" },

  -- Dica extra: você pode agrupar com outros comandos de diagnóstico se quiser
  { "<leader>df", vim.diagnostic.open_float, desc = "Show Floating Diagnostic" },

  -- Files
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind File" },
  { "<leader>fn", "<cmd>enew<cr>", desc = "[N]ew File" },

  -- FLASH (Navegação ultra rápida)
  { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
  { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },

  -- OIL (Edite seu sistema de arquivos como um buffer de texto)
  { "-", "<CMD>Oil<CR>", desc = "Abrir diretório pai (Oil)" },

  -- SNACKS (Substituindo gradualmente o Telescope/outros)
  { "<leader>bd", function() Snacks.bufdelete() end, desc = "Fechar Buffer Atual" },
  { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Abrir Git no Browser" },
  { "<leader><leader>", function() Snacks.picker.buffers() end, desc = "Find Buffers" },
  { "<leader>lg", function() Snacks.lazygit() end, desc = "LazyGit (Snacks)" },
  { "<leader>sb", function() Snacks.picker.buffers() end,   desc = "[S]earch [B]uffers" },
  { "<leader>sc", function() Snacks.picker.commands() end,  desc = "Search Commands" },
  { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Search Diagnostics" },
  { "<leader>sf", function() Snacks.picker.files() end,     desc = "[S]earch [F]iles (Snacks)" },
  { "<leader>sg", function() Snacks.picker.grep() end,      desc = "[S]earch by [G]rep (Snacks)" },
  { "<leader>sh", function() Snacks.notifier.show_history() end, desc = "Histórico de Notificações" },
  { "<leader>sh", function() Snacks.picker.help() end,      desc = "Search Help Tags" },
  { "<leader>sk", function() Snacks.picker.keymaps() end,   desc = "Search Keymaps" },
  { "<leader>sr", function() Snacks.picker.recent() end,    desc = "[S]earch [R]ecent Files" },
  { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "[S]earch current [W]ord", mode = { "n", "x" } },

  { "grd", function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
  { "grr", function() Snacks.picker.lsp_references() end,       desc = "Goto References" },
  { "gri", function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
  { "gO",  function() Snacks.picker.lsp_symbols() end,          desc = "Document Symbols" },
  { "gW",  function() Snacks.picker.lsp_workspace_symbols() end, desc = "Workspace Symbols" },

  
  -- Grupo [Z]en & Utils
  { "<leader>zz", function() Snacks.zen() end, desc = "Toggle Zen Mode" },
  { "<leader>zm", function() Snacks.zen.zoom() end, desc = "Zoom/Maximize Window" },
  { "<leader>zs", function() Snacks.scratch() end, desc = "Open Scratchpad" },

  -- Grupo [G]it (Agregando ao que já existe)
  { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit UI" },
  { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log" },
  { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },

  -- Grupo [C]ode (Renomear arquivo)
  { "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File (LSP)" },

  -- Telescope
  { "<leader>sd", "<cmd>Telescope diagnostics<cr>",        desc = "[S]earch [D]iagnostics" },
  { "<leader>sk", "<cmd>Telescope keymaps<cr>",            desc = "[S]earch [K]eymaps" },
  { "<leader>sh", "<cmd>Telescope help_tags<cr>",          desc = "[S]earch [H]elp" },
  { "<leader>st", "<cmd>Telescope builtin<cr>",            desc = "[S]earch [T]elescope Select" },

  -- Git
  { "<leader>gc", function() Snacks.picker.git_log() end,   desc = "[G]it [C]ommits" },
  { "<leader>gs", function() Snacks.picker.git_status() end, desc = "[G]it [S]tatus" },

  -- OBSIDIAN (Gerenciamento de Notas)
  { "<leader>o<CR>", "<cmd>Obsidian<CR>",              desc = "[O]bsidian Menu" },
  { "<leader>ob",    "<cmd>Obsidian backlinks<CR>",    desc = "Show [B]acklinks" },
  { "<leader>oc",    "<cmd>Obsidian toc<CR>",          desc = "Table of [C]ontents" },
  { "<leader>od",    "<cmd>Obsidian today<CR>",        desc = "To[d]ay's Note" },
  { "<leader>og",    "<cmd>Obsidian tags<CR>",         desc = "Ta[g]s" },
  { "<leader>on",    "<cmd>Obsidian new<CR>",          desc = "[N]ew Note" },
  { "<leader>oq",    "<cmd>Obsidian quick_switch<CR>", desc = "[Q]uick Switch" },
  { "<leader>or",    "<cmd>Obsidian rename<CR>",       desc = "[R]ename Note" },
  { "<leader>os",    "<cmd>Obsidian search<CR>",       desc = "[S]earch Notes" },
  { "<leader>ow",    "<cmd>Obsidian workspace<CR>",    desc = "Open [W]orkspace" },
  { "<leader>ox",    "<cmd>Obsidian template<CR>",     desc = "Insert Template" },

  -- TREESJ (Alternar entre código em linha ou múltiplas linhas)
  { "<leader>jt", "<cmd>TSJToggle<cr>", desc = "Toggle Join/Split" },
  { "<leader>js", "<cmd>TSJSplit<cr>", desc = "Split (Múltiplas Linhas)" },
  { "<leader>jj", "<cmd>TSJJoin<cr>", desc = "Join (Linha Única)" },

  -- NOICE (Gerenciamento de Mensagens/UI)
  --- { "<leader>nl", "<cmd>Noice last<cr>",    desc = "Ver última mensagem" },
  --- { "<leader>nh", "<cmd>Noice history<cr>", desc = "Histórico de mensagens" },
  --- { "<leader>nd", "<cmd>Noice dismiss<cr>", desc = "Limpar mensagens da tela" },
  --- { "<leader>nt", "<cmd>Noice telescope<cr>", desc = "Buscar mensagens no Telescope" },

  -- CHEATSHEET
  { "<leader>?", "<cmd>Cheatsheet<cr>", desc = "Ver Atalhos (Cheatsheet)" },

  -- HARDTIME (Para te treinar a não usar arrows excessivamente)
  { "<leader>th", "<cmd>Hardtime toggle<cr>", desc = "Toggle Hardtime (Treino)" },

  -- Surround
  { "cs", desc = "Change Surround" },
  { "ds", desc = "Delete Surround" },
  { "ys", desc = "Add Surround (operator)" },
  { "yss", desc = "Add Surround (line)" },
  -- Em modo visual, o surround geralmente usa 'S'
  { "S", mode = "v", desc = "Add Surround (selection)" },

  { "]]", function() Snacks.words.jump(1, true) end, desc = "Next Reference" },
  { "[[", function() Snacks.words.jump(-1, true) end, desc = "Prev Reference" },

  -- Conform
  {
    "<leader>cf",
    function()
      require("conform").format({ async = true, lsp_fallback = true })
    end,
    mode = { "n", "v" }, -- Funciona em modo Normal e Visual (seleção)
    desc = "Format Buffer/Selection"
  },
})

-- 4. Plugins que funcionam por padrão (Sem Leader)
-- nvim-tmux-navigator: Geralmente usa <ctrl-h,j,k,l> automático.
-- comment.lua: Usa 'gc' e 'gb' por padrão.
