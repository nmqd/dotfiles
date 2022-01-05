return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("plugin.colorizer.config")
  end,
  cmd = {
    "ColorizerAttachToBuffer",
    "ColorizerDetachFromBuffer",
    "ColorizerReloadAllBuffer",
    "ColorizerToggle"
  },
  keys = { "n", "<Leader>cc" },
}
