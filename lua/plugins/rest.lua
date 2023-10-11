return {
  {
    "rest-nvim/rest.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
    keys = {
      { "<leader>rr", "<plug>RestNvim<cr>", desc = "Run the request under the server" }
    },
    config = function(_, opts)
      require('rest-nvim').setup({})
    end,
  },
}
