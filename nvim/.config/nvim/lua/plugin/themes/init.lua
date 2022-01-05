return {
  "folke/tokyonight.nvim",
  config = function()
    require("plugin.themes.config")
  end,
  event = "VimEnter",
  module = "tokyonight",
}
