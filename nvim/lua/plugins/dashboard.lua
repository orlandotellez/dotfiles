-- El header del dashboard usa el highlight group `SnacksDashboardHeader`,
-- que el colorscheme pinta de celeste. Lo enlazamos a `Comment` (gris)
-- en un autocmd para que se reaplique cuando el colorscheme lo sobreescriba.
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("dashboard_header_gray", { clear = true }),
  callback = function()
    -- Cambia `Comment` por un color fijo si prefieres, ej:
    -- vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#9399b2" })
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { link = "Comment" })
  end,
})

-- Color del ASCII del dashboard
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("dashboard_header_red", { clear = true }),
  callback = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", {
      fg = "#ffffff",
    })
  end,
})

-- Aplicarlo también al cargar Neovim
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", {
  fg = "#ffffff",
})

-- Aplica también al cargar el archivo (por si el colorscheme ya estaba activo)
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { link = "Comment" })

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[

██████████████████████████████████████████████████████████████
██                                                          ██
██        ▒▒          ▒▒                             ▒▒     ██
██      ▓▓▓▒▒██▒▓▓▓▓▓▓▓▒▒▒▒          ▒░░░░░        ▒░░░     ██
██       ▓▓▓▓▓▓▓▒▒▒▒▒▓▒▓▓▒▒          ▒▓▓▓▓░▓▓      ░▓▓▒     ██
██        ▒▒░▓▓▓▓▒▓▒▒▓▒▓▓▒░          ▒▓▒▓▓▓░▓     ░▓▓▓▓▒    ██
██        ░▓░▒▓▓▓▒▒▓▒▒▓▓▓▒░          ▒▓▒▒▒▓░░░░░░░░▓▓▒█     ██
██         ▒▒▓▓▓▓▓▓▓▒▓▓░▒▒          ▒▓▓▒░▓▒░░░░░░▒░░▒▓▓     ██
██         ░▓▓▓▓░▒░▒▓▓▒▓▒▒         ▒▓░▓▒░▒▒░░░░░▓▓░░▒▒▓▓    ██
██          ░▓▓▒▒▓▓▒▓█▓█▓▒         ▒▓░░░░▒░░░░▓█▒█▒█▒░░▒▓   ██
██           ▒▓▒▒▓▓▓▓░▒▒▒▒▒       ▒▓▒░░░░░░▓▒▒░▓▒▓░█░▓░▓▒   ██
██          ▓▒▓▓▓▒▒▒▒▒▒▒▓▓▒       ▒▓▓░▒▓▓█▓▓▓▓▒▒▒▒▓▒░█▓▓▒   ██
██          ▒▒▒▓▓█▓▓█▒▓█▓▓▓▒      ▓▓░▒▓████████████████▓▒▒  ██
██         ▒▒▒▒▓█▓▒▒▓▓▒▓▓▓▓▓▒    ▓▒░░▒▓████████████▓▓██▒██  ██
██   ▓▒    ▒▓▒▒▒▒▓▓▓▓░▓▓▓▓▓▒     ▓░░░▓▓▓▓▓████████░░░░▒▓█   ██
██  ▓▓▒   ░▒▒▓▒▒▒▒▓▒▒▒▒▒▒        █▒░░░▒▓▓█▓▓█████▓░▒░█▒▓    ██
██  ▒▓▒▒░ ▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒        ▓▓░░░░▒▓█▓▓▓██▓▓██▓░░▒     ██
██   ▒▒▒▒▒▒▓▓█▓▒▒▒▒▒▒▒▒▒         ▓▓▓▒░░░▓▓▓▓▓█▓▓▓▓▓░▒▒▓▓▓   ██
██      ▒▓▒▓▓▓▓▒▒░▒▒▒░           ▓▒░▒░░▒▓▓▓▓▓▓▓▓▓▒░░▒▒▒░▓   ██
██        ▓▓▓▓▒▒▓                █▒▒▒▒░▒▓▓▓▓▓▓▓▓▒░░▒▒▒▒▓▒▓  ██
██          ▓▓▓▓▒                █▒▓▓▓░▒▓▓▓▓▓▓▒░░▒▓▓▓░░▒▒▓▒░██
██           ▓▓                  █░▒▓▓▓▓▓▓▓▓▓▓▒░▓▓▓▓▒░▒▒▒▒░▒██
██████████████████████████████████████████████████████████████
          ]],
        },
      },
    },
  },
}
