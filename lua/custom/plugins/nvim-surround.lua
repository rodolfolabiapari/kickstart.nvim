-- Configuração padrão é robusta, mas pode ser personalizada aqui.
-- As principais teclas sao ys, ds, e cs
-- :h nvim-surround.usage
-- :h nvim-surround.basics

-- Exemplo de uso:
-- 'ysiw"' : you surround     -> adiciona aspas duplas ao redor da palavra.
-- 'ds"'   : delete surround  -> deleta aspas duplas ao redor.
-- 'cs"''  : change surround  -> altera aspas duplas para simples.
-- no instert mode: <C-g>s

--     Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             ysiw)           (surround_words)
--     surr*ound_words             ysiw(           ( surround_words )
--     *make strings               ys$"            "make strings"
--     [delete ar*ound me!]        ds]             delete around me!
--     remove <b>HTML t*ags</b>    dst             remove HTML tags
--     delete(functi*on calls)     dsf             function calls
--     'change quot*es'            cs'"            "change quotes"
--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {}, -- Isso automaticamente chama o .setup({})
  },
}
