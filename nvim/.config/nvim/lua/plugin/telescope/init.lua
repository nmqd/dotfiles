return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("plugin.telescope.config")
    -- require("plugin.telescope.keymap")
  end,
  cmd = "Telescope",
}
