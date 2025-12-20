return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false, -- Cargar al inicio para evitar parpadeos
    priority = 1000, -- Asegurar que se cargue antes que otros plugins
    config = function()
      vim.opt.background = "dark" -- o "light" según prefieras
      vim.cmd.colorscheme("oxocarbon")
    end,
  },
}
