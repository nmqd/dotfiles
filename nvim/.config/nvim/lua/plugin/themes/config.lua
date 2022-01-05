local colorscheme = "tokyonight"
local g = vim.g

g.tokyonight_style = "night"
g.tokyonight_transparent = true

local present, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not present then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
