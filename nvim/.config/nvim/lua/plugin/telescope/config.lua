local present, telescope = pcall(require, "telescope")
if not present then
  return
end

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      },
      n = {
      },
    }
  },
  pickers = {
  },
  extensions = {
  }
}
