return {
  "hrsh7th/nvim-cmp",
  requires = {
    {"hrsh7th/cmp-nvim-lsp", after = "nvim-cmp"},
    {"hrsh7th/cmp-buffer", after = "nvim-cmp"},
    {"hrsh7th/cmp-path", after = "nvim-cmp"},
    {"hrsh7th/cmp-cmdline", after = "nvim-cmp"},
    {"L3MON4D3/LuaSnip", module = "luasnip"},
    {"saadparwaiz1/cmp_luasnip", after = "nvim-cmp"},
    {"rafamadriz/friendly-snippets", module = "friendly-snippets"},
  },
  config = function()
    require("plugin.cmp.config")
  end,
  event = "InsertEnter",
  module = "cmp",
}
