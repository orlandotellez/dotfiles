return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      -- Opciones recomendadas para moonfly
      vim.g.moonflyTransparent = false -- Cambia a true si quieres transparencia
      vim.g.moonflyUnderlineMatchParen = true
      vim.g.moonflyVirtualTextColor = true

      -- Aplicar el tema
      vim.cmd([[colorscheme moonfly]])
    end,
  },
}
