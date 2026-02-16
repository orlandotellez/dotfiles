-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ver el error de la línea actual en un popup flotante
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Ver error en popup" })

-- elminar palabras con el ctrl + backspace
vim.keymap.set("i", "<C-BS>", "<C-w>", { noremap = true })

-- Ver la documentación/tipo de lo que hay bajo el cursor (como el hover de VS Code)
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Ver documentación" })
