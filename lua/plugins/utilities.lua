return {
  {
    "kdheepak/lazygit.nvim",
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open LazyGit", silent = true }
    },
  },
  {
    "numToStr/Comment.nvim",
    init = function()
      require("Comment").setup()
    end,
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "ruanyl/vim-gh-line",
    init = function()
      vim.g.gh_line_map_default = 0
      vim.g.gh_line_blame_map_default = 1
      vim.g.gh_use_canonical = 1
      vim.g.gh_line_map = '<leader>gh'
    end,
  },
  {
    "tpope/vim-surround",
  },
  {
    "jiangmiao/auto-pairs",
  },
  {
    "tpope/vim-eunuch", -- Adds :Rename etc.
  },
  {
    "nvim-pack/nvim-spectre",
    keys = {
      { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files" },
    },
  },
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300

      require("which-key").setup()
    end,
  },
}
