-- TEMA GRUVBOX
--return {
--  {
--    "iibe/gruvbox-high-contrast",
--    name = "gruvbox-high-contrast",
--    lazy = false,
--    priority = 1000,
--    config = function()
--      -- Opciones para gruvbox-high-contrast
--      vim.g.gruvbox_bold = 0
--      vim.g.gruvbox_italic = 0
--      vim.g.gruvbox_transparent_bg = 0
--      vim.g.gruvbox_contrast_dark = "hard"
--      vim.g.gruvbox_sign_column = "bg1"
--      vim.g.gruvbox_number_column = "bg0"
--      vim.g.gruvbox_color_column = "bg1"
--
--      -- Establecer fondo oscuro
--      vim.o.background = "dark"
--
--      -- Aplicar el tema
--      vim.cmd([[colorscheme gruvbox-high-contrast]])
--
--      -- Ajustes para neo-tree
--      vim.cmd([[hi NeoTreeFloatNormal guifg=#ebdbb2 guibg=#3c3836]])
--      vim.cmd([[hi NeoTreeFloatBorder guifg=#665c54 guibg=#3c3836]])
--    end,
--  },
--}

-- TEMA TRANSPARENTE
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true, -- 👈 CLAVE
        term_colors = true,
        custom_highlights = function(colors)
          return {
            -- Solo keywords de control de flujo (if, else, for, while, return, break, continue, etc.)
            ["@keyword"] = { fg = "#E11A45", bold = true },
            ["@keyword.return"] = { fg = "#E11A45", bold = true },
            ["@keyword.repeat"] = { fg = "#E11A45", bold = true },
            ["@keyword.conditional"] = { fg = "#E11A45", bold = true },
            ["@keyword.exception"] = { fg = "#E11A45", bold = true },
            -- UI elements clave con tu accent
            CursorLineNr = { fg = "#E11A45", bold = true },
            Visual = { bg = "#E11A45", fg = "#1e1e2e" },
            Search = { bg = "#E11A45", fg = "#1e1e2e" },
            IncSearch = { bg = "#E11A45", fg = "#1e1e2e" },
            MatchParen = { fg = "#E11A45", bold = true, underline = true },
            -- Telescope
            TelescopePromptPrefix = { fg = "#E11A45", bold = true },
            TelescopeMatching = { fg = "#E11A45", bold = true },
            TelescopeSelection = { fg = "#E11A45", bold = true },
            -- Git signs
            GitSignsAdd = { fg = "#E11A45" },
            GitSignsChange = { fg = "#E11A45" },
            -- Diagnostics: solo errors en tu color, warnings usan amarillo de Catppuccin
            DiagnosticError = { fg = "#E11A45" },
            DiagnosticVirtualTextError = { fg = "#E11A45" },
            -- LSP references
            LspReferenceText = { bg = "#313244", fg = "#E11A45" },
            LspReferenceRead = { bg = "#313244", fg = "#E11A45" },
            LspReferenceWrite = { bg = "#313244", fg = "#E11A45" },
          }
        end,
        integrations = {
          treesitter = true,
          native_lsp = {
            enabled = true,
          },
          neo_tree = true,
          lualine = true,
          cmp = true,
          telescope = true,
          gitsigns = true,
          noice = true,
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
