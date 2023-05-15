return {
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<F11>", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" }
    },
    opts = {
      auto_open = true,
      auto_close = true,
    },
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    opts = {
      signs = false,
      highlight = {
        before = "",
        keyword = "bg",
        after = "",
      },
    },
    config = function(_, opts)
      require("todo-comments").setup(opts)
    end,
  }
}
