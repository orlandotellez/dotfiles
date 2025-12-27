return {
  --Configuramos Neo-tree a la derecha
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        width = 30,
      },
      filesystem = {
        -- Esto asegura que el buffer se comporte de forma estándar
        use_libuv_file_watcher = true,
      },
    },
  },

  --Re-mapeamos el atajo <leader>e para que use Neo-tree y no el otro
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false }, -- Desactivamos el explorador de la izquierda
    },
    keys = {
      -- Esto sobreescribe el atajo de LazyVim para que abra Neo-tree
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, position = "right" })
        end,
        desc = "Explorer Neo-tree (Right)",
      },
      { "<leader>E", false },
    },
  },
}
