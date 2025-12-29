return {
  {
    "iibe/gruvbox-high-contrast",
    name = "gruvbox-high-contrast",
    lazy = false,
    priority = 1000,
    config = function()
      -- Opciones para gruvbox-high-contrast
      vim.g.gruvbox_bold = 0
      vim.g.gruvbox_italic = 0
      vim.g.gruvbox_transparent_bg = 0
      vim.g.gruvbox_contrast_dark = "hard"
      vim.g.gruvbox_sign_column = "bg1"
      vim.g.gruvbox_number_column = "bg0"
      vim.g.gruvbox_color_column = "bg1"

      -- Establecer fondo oscuro
      vim.o.background = "dark"

      -- Aplicar el tema
      vim.cmd([[colorscheme gruvbox-high-contrast]])
    end,
  },
}
