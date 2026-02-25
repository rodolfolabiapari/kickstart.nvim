-- Creates a dynamic 80 120 column line
-- Quando somente o textwidth está configurado, fica com linhas cinzas
-- Quando habilita esse plugin, fca com gradiente e com linhas coloridas
-- Ainda preciso identifica o que está quebrando as linhas automaticamente
return {
  'Bekaboo/deadcolumn.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    blending = {
      threshold = 0.75,
    },
    warning = {
      colorcode = '#ED8796',
    }
  }
}
