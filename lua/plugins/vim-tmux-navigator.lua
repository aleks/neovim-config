return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    init = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Toggle NeoTree" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Toggle NeoTree" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Toggle NeoTree" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Toggle NeoTree" },
    },
  },
}
