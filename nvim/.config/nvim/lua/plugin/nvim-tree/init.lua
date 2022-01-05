return {
  "kyazdani42/nvim-tree.lua",
  requires = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require("plugin.nvim-tree.config")
  end,
  cmd = { "NvimTreeToggle", "NvimTreeRefresh", "NvimTreeFindFile" },
}
