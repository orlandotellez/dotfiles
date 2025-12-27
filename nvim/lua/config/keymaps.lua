-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Forzar el salto a la derecha (al explorador)
map("n", "<leader>h", function()
  local current_win = vim.api.nvim_get_current_win()
  local wins = vim.api.nvim_list_wins()

  for _, win in ipairs(wins) do
    local buf = vim.api.nvim_win_get_buf(win)
    local ft = vim.bo[buf].filetype
    -- Buscamos cualquier ventana que sea neo-tree
    if ft:match("neo%-tree") then
      vim.api.nvim_set_current_win(win)
      return
    end
  end

  -- Si no encontró neo-tree por tipo de archivo, intenta movimiento físico
  vim.api.nvim_command("wincmd l")

  -- Si te quedaste en la misma ventana, intenta ir a la ventana siguiente
  if vim.api.nvim_get_current_win() == current_win then
    vim.api.nvim_command("wincmd w")
  end
end, { desc = "Saltar al Explorador a la derecha" })

-- Para regresar al código (Izquierda)
map("n", "<C-h>", "<C-w>h", { desc = "Ir a la izquierda" })
