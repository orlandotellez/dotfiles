-- Navegación ctrl+h/j/k/l integrada con herdr (estilo vim-tmux-navigator).
-- Dentro de herdr: mueve entre splits de nvim y salta a panes de herdr en los bordes.
-- event = "VeryLazy" + vim.schedule: hace que ESTOS mapas ganen sobre los de
-- LazyVim y otros plugins que se cargan tarde (esa era la causa del atasco).
-- Sin dependencia de vim-tmux-navigator: herdr-nvim-nav maneja todo solo.
return {
  "aimdevlee/herdr-nvim-nav",
  event = "VeryLazy",
  config = function()
    vim.schedule(function()
      require("herdr-nvim-nav").setup({
        with_tmux = false,
        keymaps = {
          left = { "<C-h>", "<C-Left>" },
          down = { "<C-j>", "<C-Down>" },
          up = { "<C-k>", "<C-Up>" },
          right = { "<C-l>", "<C-Right>" },
        },
      })
    end)
  end,
}
