return {
  {
    "nvim-telescope/telescope.nvim",
    version = false,
    keys = {
      { "<leader>t", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files" },
      { "<leader>f", "<cmd>Telescope live_grep<cr>", desc = "Fuzzy find file contents" },
      { "<leader>h", "<cmd>Telescope oldfiles<cr>", desc = "Recently opened files" },
      { "<leader>j", "<cmd>Telescope jumplist<cr>", desc = "Show jumplist" },
      { "<leader>r", "<cmd>Telescope registers<cr>", desc = "Show register" },
      { "<leader>rg", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in working dir" },
      { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "List open buffers" },
      { "<leader>m", "<cmd>Telescope marks<cr>", desc = "List marks" },
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
          },
        },
      },
    },
  },
}
