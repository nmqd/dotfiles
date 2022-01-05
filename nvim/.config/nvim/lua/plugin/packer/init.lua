local plugins = {
  { "nvim-lua/plenary.nvim", module = "plenary" },
  { "nvim-lua/popup.nvim", module = "popup" },
  require("plugin.autopairs"),
  require("plugin.cmp"),
  require("plugin.colorizer"),
  require("plugin.comment"),
  require("plugin.lualine"),
  require("plugin.nvim-tree"),
  require("plugin.telescope"),
  require("plugin.themes"),
  require("plugin.treesitter"),
}

local present, packer = pcall(require, "packer")
if not present then
  local fn = vim.fn
  local packer_path = fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"
  -- print "Cloning packer.."
  -- fn.delete(packer_path, "rf")
  fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", packer_path})
  vim.cmd "packadd packer.nvim"
  present, packer = pcall(require, "packer")
  -- if present then
  --   print "Packer cloned successfully."
  -- else
  --   error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
  -- end
end

local present, config = pcall(require, "plugin.packer.config")
if not present then
  return
end

packer.init(config.init)
packer.startup(config.use(plugins))
