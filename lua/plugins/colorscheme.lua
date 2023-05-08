return {
  {
    "shaunsingh/nord.nvim",
    version = false,
    priority = 1000,
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = true
      vim.g.nord_italic = false

      vim.cmd[[colorscheme nord]]
    end,
  }
}
