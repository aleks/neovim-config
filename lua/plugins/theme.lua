return {
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    init = function()
      vim.g.nord_italic = false
      vim.g.nord_borders = true
      vim.cmd[[colorscheme nord]]
    end,
  }
}
