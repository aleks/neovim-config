return {
  {
    "nvim-telescope/telescope.nvim",
    version = false,
    keys = {
      { "<leader>t", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files" },
      { "<leader>h", "<cmd>Telescope oldfiles<cr>", desc = "Recently opened files" },
      { "<leader>j", "<cmd>Telescope jumplist<cr>", desc = "Show jumplist" },
      { "<leader>r", "<cmd>Telescope registers<cr>", desc = "Show register" },
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
