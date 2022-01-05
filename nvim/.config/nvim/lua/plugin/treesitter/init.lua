return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("plugin.treesitter.config")
  end,
  run = ":TSUpdate"
}
