local present, conf = pcall(require, "nvim-treesitter.configs")
if not present then
  return
end

conf.setup {
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "css",
    "dockerfile",
    "html",
    "json",
    "lua",
    "make",
    "markdown",
    "python",
    "vim",
    "yaml",
  },

  autopairs = { enable = true },
  highlight = { enable = true },
  indent = { enable = true },

  -- rainbow = {
  --   enable = true,
  --   extended_mode = true,
  --   max_file_lines = nil,
  -- },
}
