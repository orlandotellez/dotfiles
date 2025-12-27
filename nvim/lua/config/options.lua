-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Versión traducida a Lua para mejor performance en Neovim
_G.is_hex_color_light = function(color)
  local hex = color:gsub("#", "")

  local r = tonumber(hex:sub(1, 2), 16)
  local g = tonumber(hex:sub(3, 4), 16)
  local b = tonumber(hex:sub(5, 6), 16)

  if not r or not g or not b then
    return false
  end

  -- Fórmula de luminosidad (YIQ)
  local brightness = ((r * 299) + (g * 587) + (b * 114)) / 1000

  return brightness > 155
end
